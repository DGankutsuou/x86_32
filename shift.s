section .data

section .text
global _start
_start:
	MOV eax, 0x10
	MOV ebx, 0xaabbccdd
	SHR ebx, 0x10
	MOV al, bl
	MOV eax, 1
	INT 80h
