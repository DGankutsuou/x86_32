section .data
section .text
global _start
_start:
	MOV al, 0xff
	MOV bl, 0x2
	MUL bl
	MOV al, 0xff
	IMUL bl
	MOV eax, 0x1
	INT 80h
