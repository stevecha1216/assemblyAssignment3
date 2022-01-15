	.globl _sumOfPowers

_sumOfPowers:
LFB10:
	pushl %ebp
	movl	%esp, %ebp

	subl	$16, %esp
	movl	$0, -4(%ebp)
	jmp L2
L3:
	movl	8(%ebp), %eax
	imull	8(%ebp), %eax
	addl	%eax, -4(%ebp)
	subl	$1, 8(%ebp)
L2:
	cmpl	$0, 8(%ebp)
	jg	L3
	movl	-4(%ebp), %eax
	leave
	ret