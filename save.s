.intel_syntax noprefix

most_common_byte:
	mov rdx, 0
	mov rbp, rsp
	_while:
		cmp rdx, rsi
		jge _act
		mov esp, dword ptr [rdi + rdx]
		mov rax, 2
		mul rsp
		mov rbx, rbp
		sub rbx, rax
		inc dword ptr [rbx]
		inc rdx
		jmp _while
	_act:
		mov rdx, 0
		mov rbx, 0
		mov rcx, 0
		_loop:
			cmp rdx, 0xff
			jg _return
			mov rax, 2
			mul rdx
			mov rsi, rbp
			sub rsi, rax
			cmp dword ptr [rsi], ebx
			jg _do
			jmp _inc
		_do:
			mov rax, 2
			mul rdx
			mov rsi, rbp
			sub rsi, rax
			mov ebx, dword ptr [rsi]
			mov rcx, rdx
			jmp _inc
		_inc:
			inc rdx
			jmp _loop
	_return:
		mov rax, rcx
		mov rsp, rbp
		ret

.global _start
_start:
	call most_common_byte
