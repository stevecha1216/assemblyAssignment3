	.globl	_compareAges
_compareAges:
LFB10:
	pushl	%ebp
	movl	%esp, %ebp

	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	movl	-4(%ebp), %eax
	cmpl	-8(%ebp), %eax
	jne	L2
	movl	$1, %eax
	jmp	L3
L2:
	movl	$0, %eax
L3:
	leave
	ret
