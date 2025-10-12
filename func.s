section .data
section .text
sumer:
	ADD eax, ebx
	RET

global _start
_start:
	MOV eax, 5
	MOV ebx, 3
	CALL sumer
	MOV ebx, eax
	MOV eax, 1
	INT 80h
