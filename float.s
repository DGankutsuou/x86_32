section .data
	pi DD 3.14
section .text
global _start
_start:
	MOVSS xmm0, [pi]
	ADDSS xmm0, xmm0
	MOV eax, 1
	MOV ebx, 0
	INT 80h
