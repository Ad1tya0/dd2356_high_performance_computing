	.file	"benchmark.c"
# GNU C11 (Ubuntu 7.5.0-3ubuntu1~18.04) version 7.5.0 (x86_64-linux-gnu)
#	compiled by GNU C version 7.5.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version isl-0.19-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu benchmark.c -mtune=generic
# -march=x86-64 -O2 -fverbose-asm -fstack-protector-strong -Wformat
# -Wformat-security
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -falign-labels -fasynchronous-unwind-tables -fauto-inc-dec
# -fbranch-count-reg -fcaller-saves -fchkp-check-incomplete-type
# -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls
# -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds
# -fchkp-use-static-bounds -fchkp-use-static-const-bounds
# -fchkp-use-wrappers -fcode-hoisting -fcombine-stack-adjustments -fcommon
# -fcompare-elim -fcprop-registers -fcrossjumping -fcse-follow-jumps
# -fdefer-pop -fdelete-null-pointer-checks -fdevirtualize
# -fdevirtualize-speculatively -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -fexpensive-optimizations
# -fforward-propagate -ffp-int-builtin-inexact -ffunction-cse -fgcse
# -fgcse-lm -fgnu-runtime -fgnu-unique -fguess-branch-probability
# -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
# -findirect-inlining -finline -finline-atomics
# -finline-functions-called-once -finline-small-functions -fipa-bit-cp
# -fipa-cp -fipa-icf -fipa-icf-functions -fipa-icf-variables -fipa-profile
# -fipa-pure-const -fipa-ra -fipa-reference -fipa-sra -fipa-vrp
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
# -fmath-errno -fmerge-constants -fmerge-debug-strings
# -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
# -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2 -fplt
# -fprefetch-loop-arrays -free -freg-struct-return -freorder-blocks
# -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fschedule-insns2
# -fsemantic-interposition -fshow-column -fshrink-wrap
# -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
# -fsplit-wide-types -fssa-backprop -fssa-phiopt -fstack-protector-strong
# -fstdarg-opt -fstore-merging -fstrict-aliasing -fstrict-overflow
# -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
# -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop -ftree-cselim
# -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
# -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr
# -ftree-sra -ftree-switch-conversion -ftree-tail-merge -ftree-ter
# -ftree-vrp -funit-at-a-time -funwind-tables -fverbose-asm
# -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -malign-stringops -mavx256-split-unaligned-load
# -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387 -mfxsr
# -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone
# -msse -msse2 -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Execution time: %11.8f s\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$72, %rsp	#,
	.cfi_def_cfa_offset 96
# benchmark.c:34:   i = gettimeofday(&tp,&tzp);
	leaq	24(%rsp), %rbp	#, tmp101
	leaq	32(%rsp), %rbx	#, tmp102
# benchmark.c:7: int main(){
	movq	%fs:40, %rax	#, tmp115
	movq	%rax, 56(%rsp)	# tmp115, D.2563
	xorl	%eax, %eax	# tmp115
# benchmark.c:34:   i = gettimeofday(&tp,&tzp);
	movq	%rbp, %rsi	# tmp101,
	movq	%rbx, %rdi	# tmp102,
	call	gettimeofday@PLT	#
# benchmark.c:35:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	pxor	%xmm0, %xmm0	# tmp103
# benchmark.c:34:   i = gettimeofday(&tp,&tzp);
	movq	%rbp, %rsi	# tmp101,
# benchmark.c:35:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	pxor	%xmm1, %xmm1	# tmp106
# benchmark.c:34:   i = gettimeofday(&tp,&tzp);
	movq	%rbx, %rdi	# tmp102,
# benchmark.c:35:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	cvtsi2sdq	40(%rsp), %xmm0	# tp.tv_usec, tmp103
	mulsd	.LC0(%rip), %xmm0	#, tmp104
	cvtsi2sdq	32(%rsp), %xmm1	# tp.tv_sec, tmp106
	addsd	%xmm1, %xmm0	# tmp106, tmp104
	movsd	%xmm0, 8(%rsp)	# tmp104, %sfp
# benchmark.c:34:   i = gettimeofday(&tp,&tzp);
	call	gettimeofday@PLT	#
# benchmark.c:35:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	pxor	%xmm0, %xmm0	# tmp109
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:104:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC1(%rip), %rsi	#,
# benchmark.c:35:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	pxor	%xmm1, %xmm1	# tmp112
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:104:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$1, %edi	#,
	movl	$1, %eax	#,
# benchmark.c:35:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	cvtsi2sdq	40(%rsp), %xmm0	# tp.tv_usec, tmp109
	mulsd	.LC0(%rip), %xmm0	#, tmp110
	cvtsi2sdq	32(%rsp), %xmm1	# tp.tv_sec, tmp112
	addsd	%xmm1, %xmm0	# tmp112, _14
# benchmark.c:24:   printf("Execution time: %11.8f s\n", (t2 - t1));
	subsd	8(%rsp), %xmm0	# %sfp, tmp113
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:104:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
# benchmark.c:26: }
	movq	56(%rsp), %rdx	# D.2563, tmp116
	xorq	%fs:40, %rdx	#, tmp116
	jne	.L5	#,
	addq	$72, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
.L5:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.text
	.p2align 4,,15
	.globl	mysecond
	.type	mysecond, @function
mysecond:
.LFB24:
	.cfi_startproc
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 64
# benchmark.c:34:   i = gettimeofday(&tp,&tzp);
	leaq	8(%rsp), %rsi	#, tmp93
	leaq	16(%rsp), %rdi	#, tmp94
# benchmark.c:29: double mysecond(){
	movq	%fs:40, %rax	#, tmp100
	movq	%rax, 40(%rsp)	# tmp100, D.2569
	xorl	%eax, %eax	# tmp100
# benchmark.c:34:   i = gettimeofday(&tp,&tzp);
	call	gettimeofday@PLT	#
# benchmark.c:35:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	pxor	%xmm0, %xmm0	# tmp95
	pxor	%xmm1, %xmm1	# tmp98
# benchmark.c:36: }
	movq	40(%rsp), %rax	# D.2569, tmp101
	xorq	%fs:40, %rax	#, tmp101
# benchmark.c:35:   return ( (double) tp.tv_sec + (double) tp.tv_usec * 1.e-6 );
	cvtsi2sdq	24(%rsp), %xmm0	# tp.tv_usec, tmp95
	mulsd	.LC0(%rip), %xmm0	#, tmp96
	cvtsi2sdq	16(%rsp), %xmm1	# tp.tv_sec, tmp98
	addsd	%xmm1, %xmm0	# tmp98, <retval>
# benchmark.c:36: }
	jne	.L9	#,
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L9:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE24:
	.size	mysecond, .-mysecond
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	2696277389
	.long	1051772663
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
