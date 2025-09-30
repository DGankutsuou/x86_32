section .data
	char DB 'A'
section .text
global _start
_start:
	MOV eax, 1
	MOV ebx, [char]
	INT 80h
