section .data

section .text
global _start
_start:
	MOV eax, 2
	MOV ebx, 5
	SUB ebx, eax
	MOV eax, 1
	INT 0x80
