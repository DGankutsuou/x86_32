section .data
	x DD 1.23
	y DD 2.46
section .text
global _start
_start:
	MOVSS xmm0, [x]
	MOVSS xmm1, [y]
	UCOMISS xmm0, xmm1
	JB _bellow
	JMP _exit
_bellow:
	MOV ebx, 12
_exit:
	MOV eax, 1
	INT 80h
