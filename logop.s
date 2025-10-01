section .data

section .text
global _start
_start:
	MOV al, 0b1111
	MOV bl, 0b1010
	AND al, bl
	MOV al, 0b1111
	OR al, bl
	XOR al, bl
	NOT al
	AND al, 0xf
	MOV eax, 1
	INT 80h
