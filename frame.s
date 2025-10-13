section .data
section .text
adder:
	PUSH ebp
	MOV ebp, esp
	MOV edi, [ebp + 8]
	MOV esi, [ebp + 12]
	POP ebp
	MOV eax, edi
	ADD eax, esi
	RET
global _start
_start:
	PUSH 4
	PUSH 2
	CALL adder
	MOV ebx, eax
	MOV eax, 1
	INT 80h
