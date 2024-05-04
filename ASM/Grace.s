%define S "%%define S %3$c%4$s%3$c, 0%1$c%%define O %3$c%5$s%3$c, 0%1$c%%macro FT 0%1$c%2$csection .data%1$c%2$cstr:%2$cdb S%1$c%2$cout:%2$cdb O%1$c%2$cmode:%2$cdb %3$cw%3$c, 0%1$c%2$csection .text%1$c%2$c%2$cdefault rel%1$c%2$c%2$cextern fprintf, fopen, fclose%1$c%2$c%2$cglobal main%1$c%2$cmain:%1$c%2$c%2$cpush rbp%1$c%2$c%2$cmov rdi, out%1$c%2$c%2$cmov rsi, mode%1$c%2$c%2$ccall fopen wrt ..plt%1$c%2$c%2$cpush rax%1$c%2$c%2$cpush out%1$c%2$c%2$cmov rdi, rax%1$c%2$c%2$cmov rsi, str%1$c%2$c%2$cmov rdx, 10%1$c%2$c%2$cmov rcx, 9%1$c%2$c%2$cmov r8, 34%1$c%2$c%2$cmov r9, str%1$c%2$c%2$cxor rax, rax%1$c%2$c%2$ccall fprintf wrt ..plt%1$c%2$c%2$cmov rdi, [rsp+8]%1$c%2$c%2$ccall fclose wrt ..plt%1$c%2$c%2$cpop rax%1$c%2$c%2$cpop rax%1$c%2$c%2$cpop rbp%1$c%2$c%2$cxor rax, rax%1$c%2$c%2$cret%1$c%%endmacro%1$c; Comment%1$cFT", 0
%define O "Grace_kid.s", 0
%macro FT 0
	section .data
	str:	db S
	out:	db O
	mode:	db "w", 0
	section .text
		default rel
		extern fprintf, fopen, fclose
		global main
	main:
		push rbp
		mov rdi, out
		mov rsi, mode
		call fopen wrt ..plt
		push rax
		push out
		mov rdi, rax
		mov rsi, str
		mov rdx, 10
		mov rcx, 9
		mov r8, 34
		mov r9, str
		xor rax, rax
		call fprintf wrt ..plt
		mov rdi, [rsp+8]
		call fclose wrt ..plt
		pop rax
		pop rax
		pop rbp
		xor rax, rax
		ret
%endmacro
; Comment
FT