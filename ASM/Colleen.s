; global Comment
section .data
	str:    db  "; global Comment%1$csection .data%1$c%2$cstr:    db  %3$c%4$s%3$c, 0%1$csection .text%1$c%2$cdefault rel%1$c%2$cextern printf%1$c%2$cglobal main%1$cmain:%1$c%2$c; main Comment%1$c%2$cpush rbp%1$c%2$cmov rdi, str%1$c%2$cmov rsi, 10%1$c%2$cmov rdx, 9%1$c%2$cmov rcx, 34%1$c%2$cmov r8, str%1$c%2$cxor rax, rax%1$c%2$ccall printf wrt ..plt%1$c%2$cpop rbp%1$c%2$cxor rax, rax%1$c%2$cret", 0
section .text
	default rel
	extern printf
	global main
main:
	; main Comment
	push rbp
	mov rdi, str
	mov rsi, 10
	mov rdx, 9
	mov rcx, 34
	mov r8, str
	xor rax, rax
	call printf wrt ..plt
	pop rbp
	xor rax, rax
	ret