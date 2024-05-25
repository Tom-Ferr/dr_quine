section .data
	str:	db "section .data%1$c%2$cstr:%2$cdb %3$c%4$s%3$c, 0%1$c%2$casm:%2$cdb %3$cnasm Sully_X.s -f elf64 -o Sully_X.o -D QUINE%3$c, 0%1$c%2$cgcc:%2$cdb %3$cgcc -no-pie -Wall -Wextra -Werror -lc Sully_X.o -o Sully_X%3$c, 0%1$c%2$ctpl:%2$cdb %3$c./Sully_X.s%3$c, 0%1$c%2$cmode:%2$cdb %3$cw%3$c, 0%1$c%2$cremove:%2$cdb %3$crm ./Sully_X.o%3$c, 0%1$csection .text%1$c%2$cdefault rel%1$c%2$cextern fprintf, fopen, fclose, system%1$c%2$cglobal main%1$cmain:%1$c%2$cpush rbp%1$c%2$cmov rcx, %6$i%1$c%2$ccmp rcx, 0%1$c%2$cjle exit%1$c%2$c%%ifdef QUINE%1$c%2$cjmp decrement%1$c%2$c%%endif%1$c%2$cjmp open%1$copen:%1$c%2$cmov rdi, tpl%1$c%2$cmov rsi, mode%1$c%2$cpush rcx%1$c%2$cadd rcx, 48%1$c%2$cmov byte[rdi+8], cl%1$c%2$cpush rcx%1$c%2$ccall fopen wrt ..plt%1$c%2$cjmp write%1$cwrite:%1$c%2$cmov [rsp], rax%1$c%2$cmov rdi, rax%1$c%2$cmov rsi, str%1$c%2$cmov rdx, 10%1$c%2$cmov rcx, 9%1$c%2$cmov r8, 34%1$c%2$cmov r9, str%1$c%2$cxor rax, rax%1$c%2$ccall fprintf wrt ..plt%1$c%2$cjmp close%1$cclose:%1$c%2$cmov rdi, [rsp]%1$c%2$ccall fclose wrt ..plt%1$c%2$cjmp compile%1$ccompile:%1$c%2$clea rdi, [asm]%1$c%2$cadd byte[rsp+8], 48%1$c%2$cmov rcx, [rsp+8]%1$c%2$cmov byte[rdi+11], cl%1$c%2$cmov byte[rdi+33], cl%1$c%2$ccall system wrt ..plt%1$c%2$cmov rcx, [rsp+8]%1$c%2$clea rdi, [gcc]%1$c%2$cmov byte[rdi+44], cl%1$c%2$cmov byte[rdi+57], cl%1$c%2$ccall system wrt ..plt%1$c%2$clea rdi, [tpl]%1$c%2$cmov byte[rdi+9], 0%1$c%2$ccall system wrt ..plt%1$c%2$cjmp clean%1$cclean:%1$c%2$clea rdi, [remove]%1$c%2$cmov rcx, [rsp+8]%1$c%2$cmov byte[rdi+11], cl%1$c%2$ccall system wrt ..plt%1$c%2$cpop rax%1$c%2$cpop rcx%1$c%2$cpop rbp%1$c%2$cxor rax, rax%1$c%2$cret%1$cexit:%1$c%2$cmov rax, 60%1$c%2$cmov rdi, 1%1$c%2$csyscall%1$cdecrement:%1$c%2$cdec rcx%1$c%2$cjmp open", 0
	asm:	db "nasm Sully_X.s -f elf64 -o Sully_X.o -D QUINE", 0
	gcc:	db "gcc -no-pie -Wall -Wextra -Werror -lc Sully_X.o -o Sully_X", 0
	tpl:	db "./Sully_X.s", 0
	mode:	db "w", 0
	remove:	db "rm ./Sully_X.o", 0
section .text
	default rel
	extern fprintf, fopen, fclose, system
	global main
main:
	push rbp
	mov rcx, 5
	cmp rcx, 0
	jle exit
	%ifdef QUINE
	jmp decrement
	%endif
	jmp open
open:
	mov rdi, tpl
	mov rsi, mode
	push rcx
	add rcx, 48
	mov byte[rdi+8], cl
	push rcx
	call fopen wrt ..plt
	jmp write
write:
	mov [rsp], rax
	mov rdi, rax
	mov rsi, str
	mov rdx, 10
	mov rcx, 9
	mov r8, 34
	mov r9, str
	xor rax, rax
	call fprintf wrt ..plt
	jmp close
close:
	mov rdi, [rsp]
	call fclose wrt ..plt
	jmp compile
compile:
	lea rdi, [asm]
	add byte[rsp+8], 48
	mov rcx, [rsp+8]
	mov byte[rdi+11], cl
	mov byte[rdi+33], cl
	call system wrt ..plt
	mov rcx, [rsp+8]
	lea rdi, [gcc]
	mov byte[rdi+44], cl
	mov byte[rdi+57], cl
	call system wrt ..plt
	lea rdi, [tpl]
	mov byte[rdi+9], 0
	call system wrt ..plt
	jmp clean
clean:
	lea rdi, [remove]
	mov rcx, [rsp+8]
	mov byte[rdi+11], cl
	call system wrt ..plt
	pop rax
	pop rcx
	pop rbp
	xor rax, rax
	ret
exit:
	mov rax, 60
	mov rdi, 1
	syscall
decrement:
	dec rcx
	jmp open