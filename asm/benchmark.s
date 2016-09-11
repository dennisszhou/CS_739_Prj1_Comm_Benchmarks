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
	.quad	4671226772094713856     ## double 2.0E+4
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z16chrono_benchmarkv
	.align	4, 0x90
__Z16chrono_benchmarkv:                 ## @_Z16chrono_benchmarkv
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
Leh_func_begin0:
	.cfi_lsda 16, Lexception0
## BB#0:
	pushq	%rbp
Ltmp19:
	.cfi_def_cfa_offset 16
Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp21:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
Ltmp22:
	.cfi_offset %rbx, -48
Ltmp23:
	.cfi_offset %r12, -40
Ltmp24:
	.cfi_offset %r14, -32
Ltmp25:
	.cfi_offset %r15, -24
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movl	$20000, %ebx            ## imm = 0x4E20
	xorl	%r12d, %r12d
	.align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movq	%rax, %r14
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	subq	%r14, %r12
	addq	%rax, %r12
	decl	%ebx
	jne	LBB0_1
## BB#2:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movl	$1, %esi
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEb
	movq	%rax, %r15
	movq	(%r15), %rax
	movq	-24(%rax), %rsi
	addq	%r15, %rsi
	leaq	-40(%rbp), %r14
	movq	%r14, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp0:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%r14, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp1:
## BB#3:
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp2:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movb	%al, %r14b
Ltmp3:
## BB#4:                                ## %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit4
	leaq	-40(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	%r14b, %esi
	movq	%r15, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	%r15, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str1(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movd	%r12, %xmm0
	punpckldq	LCPI0_0(%rip), %xmm0 ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI0_1(%rip), %xmm0
	haddpd	%xmm0, %xmm0
	divsd	LCPI0_2(%rip), %xmm0
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	movq	%rax, %rbx
	movq	(%rbx), %rax
	movq	-24(%rax), %rsi
	addq	%rbx, %rsi
	leaq	-48(%rbp), %r14
	movq	%r14, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp8:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%r14, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp9:
## BB#5:
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp10:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movb	%al, %r14b
Ltmp11:
## BB#6:                                ## %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	%r14b, %esi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB0_7:
Ltmp4:
	movq	%rax, %rbx
Ltmp5:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp6:
	jmp	LBB0_8
LBB0_9:
Ltmp7:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB0_10:
Ltmp12:
	movq	%rax, %rbx
Ltmp13:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp14:
LBB0_8:                                 ## %unwind_resume
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB0_11:
Ltmp15:
	movq	%rax, %rdi
	callq	___clang_call_terminate
	.cfi_endproc
Leh_func_end0:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table0:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\360"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	104                     ## Call site table length
Lset0 = Leh_func_begin0-Leh_func_begin0 ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp0-Leh_func_begin0           ##   Call between Leh_func_begin0 and Ltmp0
	.long	Lset1
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset2 = Ltmp0-Leh_func_begin0           ## >> Call Site 2 <<
	.long	Lset2
Lset3 = Ltmp3-Ltmp0                     ##   Call between Ltmp0 and Ltmp3
	.long	Lset3
Lset4 = Ltmp4-Leh_func_begin0           ##     jumps to Ltmp4
	.long	Lset4
	.byte	0                       ##   On action: cleanup
Lset5 = Ltmp3-Leh_func_begin0           ## >> Call Site 3 <<
	.long	Lset5
Lset6 = Ltmp8-Ltmp3                     ##   Call between Ltmp3 and Ltmp8
	.long	Lset6
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset7 = Ltmp8-Leh_func_begin0           ## >> Call Site 4 <<
	.long	Lset7
Lset8 = Ltmp11-Ltmp8                    ##   Call between Ltmp8 and Ltmp11
	.long	Lset8
Lset9 = Ltmp12-Leh_func_begin0          ##     jumps to Ltmp12
	.long	Lset9
	.byte	0                       ##   On action: cleanup
Lset10 = Ltmp11-Leh_func_begin0         ## >> Call Site 5 <<
	.long	Lset10
Lset11 = Ltmp5-Ltmp11                   ##   Call between Ltmp11 and Ltmp5
	.long	Lset11
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset12 = Ltmp5-Leh_func_begin0          ## >> Call Site 6 <<
	.long	Lset12
Lset13 = Ltmp6-Ltmp5                    ##   Call between Ltmp5 and Ltmp6
	.long	Lset13
Lset14 = Ltmp7-Leh_func_begin0          ##     jumps to Ltmp7
	.long	Lset14
	.byte	1                       ##   On action: 1
Lset15 = Ltmp13-Leh_func_begin0         ## >> Call Site 7 <<
	.long	Lset15
Lset16 = Ltmp14-Ltmp13                  ##   Call between Ltmp13 and Ltmp14
	.long	Lset16
Lset17 = Ltmp15-Leh_func_begin0         ##     jumps to Ltmp15
	.long	Lset17
	.byte	1                       ##   On action: 1
Lset18 = Ltmp14-Leh_func_begin0         ## >> Call Site 8 <<
	.long	Lset18
Lset19 = Leh_func_end0-Ltmp14           ##   Call between Ltmp14 and Leh_func_end0
	.long	Lset19
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
Leh_func_begin1:
	.cfi_lsda 16, Lexception1
## BB#0:
	pushq	%rbp
Ltmp59:
	.cfi_def_cfa_offset 16
Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp61:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
Ltmp62:
	.cfi_offset %rbx, -56
Ltmp63:
	.cfi_offset %r12, -48
Ltmp64:
	.cfi_offset %r13, -40
Ltmp65:
	.cfi_offset %r14, -32
Ltmp66:
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
Ltmp26:
	leaq	-64(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp27:
## BB#1:
	cmpb	$0, -64(%rbp)
	je	LBB1_13
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
	jne	LBB1_4
## BB#3:
	leaq	(%r14,%r15), %r13
LBB1_4:
	leaq	(%rbx,%r12), %r8
	movl	144(%rbx,%r12), %eax
	cmpl	$-1, %eax
	jne	LBB1_10
## BB#5:
Ltmp28:
	movq	%rdi, -72(%rbp)         ## 8-byte Spill
	leaq	-48(%rbp), %rdi
	movq	%r8, %rsi
	movq	%r8, -80(%rbp)          ## 8-byte Spill
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp29:
## BB#6:                                ## %.noexc
Ltmp30:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-48(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp31:
## BB#7:
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp32:
	movl	$32, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movb	%al, -81(%rbp)          ## 1-byte Spill
Ltmp33:
## BB#8:                                ## %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i
Ltmp38:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp39:
## BB#9:                                ## %.noexc1
	movsbl	-81(%rbp), %eax         ## 1-byte Folded Reload
	movl	%eax, 144(%rbx,%r12)
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	movq	-80(%rbp), %r8          ## 8-byte Reload
LBB1_10:
	addq	%r14, %r15
Ltmp40:
	movsbl	%al, %r9d
	movq	%r14, %rsi
	movq	%r13, %rdx
	movq	%r15, %rcx
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp41:
## BB#11:
	testq	%rax, %rax
	jne	LBB1_13
## BB#12:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$5, %esi
Ltmp42:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp43:
LBB1_13:                                ## %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj.exit
Ltmp47:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp48:
LBB1_21:
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB1_14:
Ltmp34:
	movq	%rax, %r14
Ltmp35:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp36:
	jmp	LBB1_17
LBB1_15:
Ltmp37:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB1_16:
Ltmp44:
	movq	%rax, %r14
LBB1_17:                                ## %.body
Ltmp45:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp46:
	jmp	LBB1_19
LBB1_18:
Ltmp49:
	movq	%rax, %r14
LBB1_19:
	movq	%r14, %rdi
	callq	___cxa_begin_catch
	movq	(%rbx), %rax
	movq	%rbx, %rcx
	addq	-24(%rax), %rcx
Ltmp50:
	movq	%rcx, %rdi
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp51:
## BB#20:
	callq	___cxa_end_catch
	jmp	LBB1_21
LBB1_22:
Ltmp52:
	movq	%rax, %rbx
Ltmp53:
	callq	___cxa_end_catch
Ltmp54:
## BB#23:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB1_24:
Ltmp55:
	movq	%rax, %rdi
	callq	___clang_call_terminate
	.cfi_endproc
Leh_func_end1:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table1:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\245\201\200\200"      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\234\001"              ## Call site table length
Lset20 = Ltmp26-Leh_func_begin1         ## >> Call Site 1 <<
	.long	Lset20
Lset21 = Ltmp27-Ltmp26                  ##   Call between Ltmp26 and Ltmp27
	.long	Lset21
Lset22 = Ltmp49-Leh_func_begin1         ##     jumps to Ltmp49
	.long	Lset22
	.byte	1                       ##   On action: 1
Lset23 = Ltmp28-Leh_func_begin1         ## >> Call Site 2 <<
	.long	Lset23
Lset24 = Ltmp29-Ltmp28                  ##   Call between Ltmp28 and Ltmp29
	.long	Lset24
Lset25 = Ltmp44-Leh_func_begin1         ##     jumps to Ltmp44
	.long	Lset25
	.byte	1                       ##   On action: 1
Lset26 = Ltmp30-Leh_func_begin1         ## >> Call Site 3 <<
	.long	Lset26
Lset27 = Ltmp33-Ltmp30                  ##   Call between Ltmp30 and Ltmp33
	.long	Lset27
Lset28 = Ltmp34-Leh_func_begin1         ##     jumps to Ltmp34
	.long	Lset28
	.byte	1                       ##   On action: 1
Lset29 = Ltmp38-Leh_func_begin1         ## >> Call Site 4 <<
	.long	Lset29
Lset30 = Ltmp43-Ltmp38                  ##   Call between Ltmp38 and Ltmp43
	.long	Lset30
Lset31 = Ltmp44-Leh_func_begin1         ##     jumps to Ltmp44
	.long	Lset31
	.byte	1                       ##   On action: 1
Lset32 = Ltmp47-Leh_func_begin1         ## >> Call Site 5 <<
	.long	Lset32
Lset33 = Ltmp48-Ltmp47                  ##   Call between Ltmp47 and Ltmp48
	.long	Lset33
Lset34 = Ltmp49-Leh_func_begin1         ##     jumps to Ltmp49
	.long	Lset34
	.byte	1                       ##   On action: 1
Lset35 = Ltmp35-Leh_func_begin1         ## >> Call Site 6 <<
	.long	Lset35
Lset36 = Ltmp36-Ltmp35                  ##   Call between Ltmp35 and Ltmp36
	.long	Lset36
Lset37 = Ltmp37-Leh_func_begin1         ##     jumps to Ltmp37
	.long	Lset37
	.byte	1                       ##   On action: 1
Lset38 = Ltmp45-Leh_func_begin1         ## >> Call Site 7 <<
	.long	Lset38
Lset39 = Ltmp46-Ltmp45                  ##   Call between Ltmp45 and Ltmp46
	.long	Lset39
Lset40 = Ltmp55-Leh_func_begin1         ##     jumps to Ltmp55
	.long	Lset40
	.byte	1                       ##   On action: 1
Lset41 = Ltmp46-Leh_func_begin1         ## >> Call Site 8 <<
	.long	Lset41
Lset42 = Ltmp50-Ltmp46                  ##   Call between Ltmp46 and Ltmp50
	.long	Lset42
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset43 = Ltmp50-Leh_func_begin1         ## >> Call Site 9 <<
	.long	Lset43
Lset44 = Ltmp51-Ltmp50                  ##   Call between Ltmp50 and Ltmp51
	.long	Lset44
Lset45 = Ltmp52-Leh_func_begin1         ##     jumps to Ltmp52
	.long	Lset45
	.byte	0                       ##   On action: cleanup
Lset46 = Ltmp51-Leh_func_begin1         ## >> Call Site 10 <<
	.long	Lset46
Lset47 = Ltmp53-Ltmp51                  ##   Call between Ltmp51 and Ltmp53
	.long	Lset47
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset48 = Ltmp53-Leh_func_begin1         ## >> Call Site 11 <<
	.long	Lset48
Lset49 = Ltmp54-Ltmp53                  ##   Call between Ltmp53 and Ltmp54
	.long	Lset49
Lset50 = Ltmp55-Leh_func_begin1         ##     jumps to Ltmp55
	.long	Lset50
	.byte	1                       ##   On action: 1
Lset51 = Ltmp54-Leh_func_begin1         ## >> Call Site 12 <<
	.long	Lset51
Lset52 = Leh_func_end1-Ltmp54           ##   Call between Ltmp54 and Leh_func_end1
	.long	Lset52
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__const
	.align	4
LCPI2_0:
	.long	1127219200              ## 0x43300000
	.long	1160773632              ## 0x45300000
	.long	0                       ## 0x0
	.long	0                       ## 0x0
LCPI2_1:
	.quad	4841369599423283200     ## double 4.503600e+15
	.quad	4985484787499139072     ## double 1.934281e+25
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI2_2:
	.quad	4671226772094713856     ## double 2.0E+4
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z14mach_benchmarkv
	.align	4, 0x90
__Z14mach_benchmarkv:                   ## @_Z14mach_benchmarkv
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
Leh_func_begin2:
	.cfi_lsda 16, Lexception2
## BB#0:
	pushq	%rbp
Ltmp78:
	.cfi_def_cfa_offset 16
Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp80:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
Ltmp81:
	.cfi_offset %rbx, -40
Ltmp82:
	.cfi_offset %r14, -32
Ltmp83:
	.cfi_offset %r15, -24
	cmpl	$0, __ZZ14mach_benchmarkvE13sTimebaseInfo+4(%rip)
	jne	LBB2_2
## BB#1:
	leaq	__ZZ14mach_benchmarkvE13sTimebaseInfo(%rip), %rdi
	callq	_mach_timebase_info
LBB2_2:
	callq	_mach_absolute_time
	callq	_mach_absolute_time
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$20000, %r15d           ## imm = 0x4E20
	xorl	%ebx, %ebx
	.align	4, 0x90
LBB2_3:                                 ## =>This Inner Loop Header: Depth=1
	callq	_mach_absolute_time
	movq	%rax, %r14
	movl	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
	callq	_mach_absolute_time
	movq	%rax, %rcx
	movl	__ZZ14mach_benchmarkvE13sTimebaseInfo(%rip), %eax
	imulq	%r14, %rax
	movl	__ZZ14mach_benchmarkvE13sTimebaseInfo+4(%rip), %esi
	xorl	%edx, %edx
	divq	%rsi
	addq	%rcx, %rbx
	subq	%rax, %rbx
	decl	%r15d
	jne	LBB2_3
## BB#4:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str2(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movd	%rbx, %xmm0
	punpckldq	LCPI2_0(%rip), %xmm0 ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI2_1(%rip), %xmm0
	haddpd	%xmm0, %xmm0
	divsd	LCPI2_2(%rip), %xmm0
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	movq	%rax, %rbx
	movq	(%rbx), %rax
	movq	-24(%rax), %rsi
	addq	%rbx, %rsi
	leaq	-32(%rbp), %r14
	movq	%r14, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp67:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%r14, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp68:
## BB#5:
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp69:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movb	%al, %r14b
Ltmp70:
## BB#6:                                ## %_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_.exit
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	%r14b, %esi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB2_7:
Ltmp71:
	movq	%rax, %rbx
Ltmp72:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp73:
## BB#8:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB2_9:
Ltmp74:
	movq	%rax, %rdi
	callq	___clang_call_terminate
	.cfi_endproc
Leh_func_end2:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table2:
Lexception2:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	73                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	65                      ## Call site table length
Lset53 = Leh_func_begin2-Leh_func_begin2 ## >> Call Site 1 <<
	.long	Lset53
Lset54 = Ltmp67-Leh_func_begin2         ##   Call between Leh_func_begin2 and Ltmp67
	.long	Lset54
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset55 = Ltmp67-Leh_func_begin2         ## >> Call Site 2 <<
	.long	Lset55
Lset56 = Ltmp70-Ltmp67                  ##   Call between Ltmp67 and Ltmp70
	.long	Lset56
Lset57 = Ltmp71-Leh_func_begin2         ##     jumps to Ltmp71
	.long	Lset57
	.byte	0                       ##   On action: cleanup
Lset58 = Ltmp70-Leh_func_begin2         ## >> Call Site 3 <<
	.long	Lset58
Lset59 = Ltmp72-Ltmp70                  ##   Call between Ltmp70 and Ltmp72
	.long	Lset59
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset60 = Ltmp72-Leh_func_begin2         ## >> Call Site 4 <<
	.long	Lset60
Lset61 = Ltmp73-Ltmp72                  ##   Call between Ltmp72 and Ltmp73
	.long	Lset61
Lset62 = Ltmp74-Leh_func_begin2         ##     jumps to Ltmp74
	.long	Lset62
	.byte	1                       ##   On action: 1
Lset63 = Ltmp73-Leh_func_begin2         ## >> Call Site 5 <<
	.long	Lset63
Lset64 = Leh_func_end2-Ltmp73           ##   Call between Ltmp73 and Leh_func_end2
	.long	Lset64
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z14gtod_benchmarkv
	.align	4, 0x90
__Z14gtod_benchmarkv:                   ## @_Z14gtod_benchmarkv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp86:
	.cfi_def_cfa_offset 16
Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp88:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	_gettimeofday
	movl	$0, -36(%rbp)
	movl	$300, %eax              ## imm = 0x12C
	.align	4, 0x90
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	incl	-36(%rbp)
	decl	%eax
	jne	LBB3_1
## BB#2:
	leaq	-32(%rbp), %rdi
	xorl	%esi, %esi
	callq	_gettimeofday
	imulq	$1000000, -32(%rbp), %rax ## imm = 0xF4240
	movslq	-24(%rbp), %rsi
	movslq	-8(%rbp), %rcx
	imulq	$-1000000, -16(%rbp), %rdx ## imm = 0xFFFFFFFFFFF0BDC0
	addq	%rax, %rsi
	addq	%rdx, %rsi
	subq	%rcx, %rsi
	leaq	L_.str3(%rip), %rdi
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	jmp	_printf                 ## TAILCALL
	.cfi_endproc

	.globl	__Z9benchmarkPv
	.align	4, 0x90
__Z9benchmarkPv:                        ## @_Z9benchmarkPv
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
Leh_func_begin4:
	.cfi_lsda 16, Lexception4
## BB#0:
	pushq	%rbp
Ltmp108:
	.cfi_def_cfa_offset 16
Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp110:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
Ltmp111:
	.cfi_offset %rbx, -32
Ltmp112:
	.cfi_offset %r14, -24
	leaq	_p_mutex(%rip), %rdi
	callq	_pthread_mutex_lock
	movl	$1, _p_var(%rip)
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str4(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rbx
	movq	(%rbx), %rax
	movq	-24(%rax), %rsi
	addq	%rbx, %rsi
	leaq	-64(%rbp), %r14
	movq	%r14, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp89:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%r14, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp90:
## BB#1:
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp91:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movb	%al, %r14b
Ltmp92:
## BB#2:                                ## %_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_.exit
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	%r14b, %esi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	leaq	_thread_start_cond(%rip), %rdi
	callq	_pthread_cond_signal
	cmpl	$2, _p_var(%rip)
	je	LBB4_5
## BB#3:
	leaq	_thread_start_cond(%rip), %r14
	leaq	_p_mutex(%rip), %rbx
	.align	4, 0x90
LBB4_4:                                 ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_pthread_cond_wait
	cmpl	$2, _p_var(%rip)
	jne	LBB4_4
LBB4_5:                                 ## %._crit_edge
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str5(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rbx
	movq	(%rbx), %rax
	movq	-24(%rax), %rsi
	addq	%rbx, %rsi
	leaq	-32(%rbp), %r14
	movq	%r14, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp97:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%r14, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp98:
## BB#6:
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp99:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movb	%al, %r14b
Ltmp100:
## BB#7:                                ## %_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_.exit1
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	%r14b, %esi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	leaq	_p_mutex(%rip), %rdi
	callq	_pthread_mutex_unlock
	callq	__Z16chrono_benchmarkv
	callq	__Z14mach_benchmarkv
	leaq	-32(%rbp), %rdi
	xorl	%esi, %esi
	callq	_gettimeofday
	movl	$0, -52(%rbp)
	movl	$300, %eax              ## imm = 0x12C
	.align	4, 0x90
LBB4_8:                                 ## =>This Inner Loop Header: Depth=1
	incl	-52(%rbp)
	decl	%eax
	jne	LBB4_8
## BB#9:                                ## %_Z14gtod_benchmarkv.exit
	leaq	-48(%rbp), %rdi
	xorl	%esi, %esi
	callq	_gettimeofday
	movq	-48(%rbp), %rax
	movslq	-40(%rbp), %rsi
	movslq	-24(%rbp), %rcx
	subq	-32(%rbp), %rax
	imulq	$1000000, %rax, %rax    ## imm = 0xF4240
	subq	%rcx, %rsi
	addq	%rax, %rsi
	leaq	L_.str3(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
LBB4_10:
Ltmp93:
	movq	%rax, %rbx
Ltmp94:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp95:
	jmp	LBB4_11
LBB4_12:
Ltmp96:
	movq	%rax, %rdi
	callq	___clang_call_terminate
LBB4_13:
Ltmp101:
	movq	%rax, %rbx
Ltmp102:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp103:
LBB4_11:                                ## %unwind_resume
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB4_14:
Ltmp104:
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
	.asciz	"\360"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	104                     ## Call site table length
Lset65 = Leh_func_begin4-Leh_func_begin4 ## >> Call Site 1 <<
	.long	Lset65
Lset66 = Ltmp89-Leh_func_begin4         ##   Call between Leh_func_begin4 and Ltmp89
	.long	Lset66
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset67 = Ltmp89-Leh_func_begin4         ## >> Call Site 2 <<
	.long	Lset67
Lset68 = Ltmp92-Ltmp89                  ##   Call between Ltmp89 and Ltmp92
	.long	Lset68
Lset69 = Ltmp93-Leh_func_begin4         ##     jumps to Ltmp93
	.long	Lset69
	.byte	0                       ##   On action: cleanup
Lset70 = Ltmp92-Leh_func_begin4         ## >> Call Site 3 <<
	.long	Lset70
Lset71 = Ltmp97-Ltmp92                  ##   Call between Ltmp92 and Ltmp97
	.long	Lset71
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset72 = Ltmp97-Leh_func_begin4         ## >> Call Site 4 <<
	.long	Lset72
Lset73 = Ltmp100-Ltmp97                 ##   Call between Ltmp97 and Ltmp100
	.long	Lset73
Lset74 = Ltmp101-Leh_func_begin4        ##     jumps to Ltmp101
	.long	Lset74
	.byte	0                       ##   On action: cleanup
Lset75 = Ltmp100-Leh_func_begin4        ## >> Call Site 5 <<
	.long	Lset75
Lset76 = Ltmp94-Ltmp100                 ##   Call between Ltmp100 and Ltmp94
	.long	Lset76
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset77 = Ltmp94-Leh_func_begin4         ## >> Call Site 6 <<
	.long	Lset77
Lset78 = Ltmp95-Ltmp94                  ##   Call between Ltmp94 and Ltmp95
	.long	Lset78
Lset79 = Ltmp96-Leh_func_begin4         ##     jumps to Ltmp96
	.long	Lset79
	.byte	1                       ##   On action: 1
Lset80 = Ltmp102-Leh_func_begin4        ## >> Call Site 7 <<
	.long	Lset80
Lset81 = Ltmp103-Ltmp102                ##   Call between Ltmp102 and Ltmp103
	.long	Lset81
Lset82 = Ltmp104-Leh_func_begin4        ##     jumps to Ltmp104
	.long	Lset82
	.byte	1                       ##   On action: 1
Lset83 = Ltmp103-Leh_func_begin4        ## >> Call Site 8 <<
	.long	Lset83
Lset84 = Leh_func_end4-Ltmp103          ##   Call between Ltmp103 and Leh_func_end4
	.long	Lset84
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
Ltmp124:
	.cfi_def_cfa_offset 16
Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp126:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
Ltmp127:
	.cfi_offset %rbx, -32
Ltmp128:
	.cfi_offset %r14, -24
	leaq	-32(%rbp), %rdi
	callq	_mach_timebase_info
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str6(%rip), %rsi
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
Ltmp113:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%r14, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp114:
## BB#1:
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp115:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movb	%al, %r14b
Ltmp116:
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
Ltmp117:
	movq	%rax, %rbx
Ltmp118:
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp119:
## BB#5:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB5_3:
	leaq	L_.str7(%rip), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	_mach_error
	movl	$1, %edi
	callq	_exit
LBB5_6:
Ltmp120:
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
Lset85 = Leh_func_begin5-Leh_func_begin5 ## >> Call Site 1 <<
	.long	Lset85
Lset86 = Ltmp113-Leh_func_begin5        ##   Call between Leh_func_begin5 and Ltmp113
	.long	Lset86
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset87 = Ltmp113-Leh_func_begin5        ## >> Call Site 2 <<
	.long	Lset87
Lset88 = Ltmp116-Ltmp113                ##   Call between Ltmp113 and Ltmp116
	.long	Lset88
Lset89 = Ltmp117-Leh_func_begin5        ##     jumps to Ltmp117
	.long	Lset89
	.byte	0                       ##   On action: cleanup
Lset90 = Ltmp116-Leh_func_begin5        ## >> Call Site 3 <<
	.long	Lset90
Lset91 = Ltmp118-Ltmp116                ##   Call between Ltmp116 and Ltmp118
	.long	Lset91
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset92 = Ltmp118-Leh_func_begin5        ## >> Call Site 4 <<
	.long	Lset92
Lset93 = Ltmp119-Ltmp118                ##   Call between Ltmp118 and Ltmp119
	.long	Lset93
Lset94 = Ltmp120-Leh_func_begin5        ##     jumps to Ltmp120
	.long	Lset94
	.byte	1                       ##   On action: 1
Lset95 = Ltmp119-Leh_func_begin5        ## >> Call Site 5 <<
	.long	Lset95
Lset96 = Leh_func_end5-Ltmp119          ##   Call between Ltmp119 and Leh_func_end5
	.long	Lset96
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
Leh_func_begin6:
	.cfi_lsda 16, Lexception6
## BB#0:
	pushq	%rbp
Ltmp140:
	.cfi_def_cfa_offset 16
Ltmp141:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp142:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
Ltmp143:
	.cfi_offset %rbx, -32
Ltmp144:
	.cfi_offset %r14, -24
	leaq	__Z9benchmarkPv(%rip), %rdx
	leaq	-32(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	callq	_pthread_create
	leaq	_p_mutex(%rip), %rdi
	callq	_pthread_mutex_lock
	cmpl	$0, _p_var(%rip)
	jne	LBB6_3
## BB#1:
	leaq	_thread_start_cond(%rip), %r14
	leaq	_p_mutex(%rip), %rbx
	.align	4, 0x90
LBB6_2:                                 ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_pthread_cond_wait
	cmpl	$0, _p_var(%rip)
	je	LBB6_2
LBB6_3:                                 ## %._crit_edge
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str8(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	movq	%rax, %rbx
	movq	(%rbx), %rax
	movq	-24(%rax), %rsi
	addq	%rbx, %rsi
	leaq	-24(%rbp), %r14
	movq	%r14, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp129:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%r14, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp130:
## BB#4:
	movq	(%rax), %rcx
	movq	56(%rcx), %rcx
Ltmp131:
	movl	$10, %esi
	movq	%rax, %rdi
	callq	*%rcx
	movb	%al, %r14b
Ltmp132:
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
LBB6_6:
Ltmp133:
	movq	%rax, %rbx
Ltmp134:
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp135:
## BB#7:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB6_8:
Ltmp136:
	movq	%rax, %rdi
	callq	___clang_call_terminate
	.cfi_endproc
Leh_func_end6:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table6:
Lexception6:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	73                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	65                      ## Call site table length
Lset97 = Leh_func_begin6-Leh_func_begin6 ## >> Call Site 1 <<
	.long	Lset97
Lset98 = Ltmp129-Leh_func_begin6        ##   Call between Leh_func_begin6 and Ltmp129
	.long	Lset98
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset99 = Ltmp129-Leh_func_begin6        ## >> Call Site 2 <<
	.long	Lset99
Lset100 = Ltmp132-Ltmp129               ##   Call between Ltmp129 and Ltmp132
	.long	Lset100
Lset101 = Ltmp133-Leh_func_begin6       ##     jumps to Ltmp133
	.long	Lset101
	.byte	0                       ##   On action: cleanup
Lset102 = Ltmp132-Leh_func_begin6       ## >> Call Site 3 <<
	.long	Lset102
Lset103 = Ltmp134-Ltmp132               ##   Call between Ltmp132 and Ltmp134
	.long	Lset103
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset104 = Ltmp134-Leh_func_begin6       ## >> Call Site 4 <<
	.long	Lset104
Lset105 = Ltmp135-Ltmp134               ##   Call between Ltmp134 and Ltmp135
	.long	Lset105
Lset106 = Ltmp136-Leh_func_begin6       ##     jumps to Ltmp136
	.long	Lset106
	.byte	1                       ##   On action: 1
Lset107 = Ltmp135-Leh_func_begin6       ## >> Call Site 5 <<
	.long	Lset107
Lset108 = Leh_func_end6-Ltmp135         ##   Call between Ltmp135 and Leh_func_end6
	.long	Lset108
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
Leh_func_begin8:
	.cfi_lsda 16, Lexception8
## BB#0:
	pushq	%rbp
Ltmp154:
	.cfi_def_cfa_offset 16
Ltmp155:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp156:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
Ltmp157:
	.cfi_offset %rbx, -56
Ltmp158:
	.cfi_offset %r12, -48
Ltmp159:
	.cfi_offset %r13, -40
Ltmp160:
	.cfi_offset %r14, -32
Ltmp161:
	.cfi_offset %r15, -24
	movq	%rcx, %rbx
	movq	%rdi, %r15
	xorl	%eax, %eax
	testq	%r15, %r15
	je	LBB8_12
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
	jle	LBB8_3
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
	jne	LBB8_12
LBB8_3:
	testq	%r13, %r13
	jle	LBB8_9
## BB#4:
	movq	%rdx, -72(%rbp)         ## 8-byte Spill
	movq	%r8, %r12
	movsbl	%r9b, %edx
	leaq	-64(%rbp), %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	testb	$1, -64(%rbp)
	je	LBB8_6
## BB#5:
	movq	-48(%rbp), %rsi
	jmp	LBB8_7
LBB8_6:
	leaq	-63(%rbp), %rsi
LBB8_7:                                 ## %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit
	movq	(%r15), %rax
	movq	96(%rax), %rax
Ltmp145:
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	*%rax
	movq	%rax, %r14
Ltmp146:
## BB#8:                                ## %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl.exit
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	xorl	%eax, %eax
	cmpq	%r13, %r14
	movq	%r12, %r8
	movq	-72(%rbp), %rdx         ## 8-byte Reload
	jne	LBB8_12
LBB8_9:
	subq	%rdx, %rbx
	testq	%rbx, %rbx
	jle	LBB8_11
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
	jne	LBB8_12
LBB8_11:
	movq	$0, 24(%r8)
	movq	%r15, %rax
LBB8_12:                                ## %.thread
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB8_13:
Ltmp147:
	movq	%rax, %rbx
Ltmp148:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp149:
## BB#14:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
LBB8_15:
Ltmp150:
	movq	%rax, %rdi
	callq	___clang_call_terminate
	.cfi_endproc
Leh_func_end8:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table8:
Lexception8:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	73                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	65                      ## Call site table length
Lset109 = Leh_func_begin8-Leh_func_begin8 ## >> Call Site 1 <<
	.long	Lset109
Lset110 = Ltmp145-Leh_func_begin8       ##   Call between Leh_func_begin8 and Ltmp145
	.long	Lset110
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset111 = Ltmp145-Leh_func_begin8       ## >> Call Site 2 <<
	.long	Lset111
Lset112 = Ltmp146-Ltmp145               ##   Call between Ltmp145 and Ltmp146
	.long	Lset112
Lset113 = Ltmp147-Leh_func_begin8       ##     jumps to Ltmp147
	.long	Lset113
	.byte	0                       ##   On action: cleanup
Lset114 = Ltmp146-Leh_func_begin8       ## >> Call Site 3 <<
	.long	Lset114
Lset115 = Ltmp148-Ltmp146               ##   Call between Ltmp146 and Ltmp148
	.long	Lset115
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset116 = Ltmp148-Leh_func_begin8       ## >> Call Site 4 <<
	.long	Lset116
Lset117 = Ltmp149-Ltmp148               ##   Call between Ltmp148 and Ltmp149
	.long	Lset117
Lset118 = Ltmp150-Leh_func_begin8       ##     jumps to Ltmp150
	.long	Lset118
	.byte	1                       ##   On action: 1
Lset119 = Ltmp149-Leh_func_begin8       ## >> Call Site 5 <<
	.long	Lset119
Lset120 = Leh_func_end8-Ltmp149         ##   Call between Ltmp149 and Leh_func_end8
	.long	Lset120
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
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Is steady:\t"

L_.str1:                                ## @.str1
	.asciz	"Diff time:\t"

.zerofill __DATA,__bss,__ZZ14mach_benchmarkvE13sTimebaseInfo,8,2 ## @_ZZ14mach_benchmarkvE13sTimebaseInfo
L_.str2:                                ## @.str2
	.asciz	"Avg Mach Time:\t"

L_.str3:                                ## @.str3
	.asciz	"%ld\n"

L_.str4:                                ## @.str4
	.asciz	"Benchmark thread init"

L_.str5:                                ## @.str5
	.asciz	"Benchmark started"

L_.str6:                                ## @.str6
	.asciz	"time scale: "

L_.str7:                                ## @.str7
	.asciz	"thread_policy_set:"

L_.str8:                                ## @.str8
	.asciz	"Moving thread to RTS"

	.section	__TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support

.subsections_via_symbols
