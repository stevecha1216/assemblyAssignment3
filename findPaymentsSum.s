	.globl	_findPaymentsSum
_findPaymentsSum:
LFB10:
	pushl	%ebp
	movl	%esp, %ebp

	subl	$16, %esp
	movl	$0, -4(%ebp)
	movl	$0, -8(%ebp)
	jmp	L2
L3:
	movl	8(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	8(%eax,%edx,4), %eax
	addl	%eax, -4(%ebp)
	addl	$1, -8(%ebp)
L2:
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	L3
	movl	-4(%ebp), %eax
	leave
	ret
