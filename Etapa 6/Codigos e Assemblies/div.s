	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movl	_a(%rip), %ecx
	movl	%eax, -4(%rbp)          ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	_b(%rip)
	movl	%eax, _c(%rip)
	movl	-4(%rbp), %eax          ## 4-byte Reload
	popq	%rbp
	retq
	.cfi_endproc

	.section	__DATA,__data
	.globl	_b                      ## @b
	.align	2
_b:
	.long	5                       ## 0x5

	.globl	_a                      ## @a
	.align	2
_a:
	.long	6                       ## 0x6

	.globl	_c                      ## @c
.zerofill __DATA,__common,_c,4,2

.subsections_via_symbols
