section .data

section .text
global _start
_start:
	MOV al, 0xff
	MOV bl, 2
	IDIV bl
	MOV eax, 1
	INT 80h
