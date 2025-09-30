section .bss
	num RESB 4
section .data
	num2 DB 4 DUP(2)
section .text
global _start
_start:
	MOV ebx, num2
	MOV cl, 15
	MOV [num], cl
	MOV [num+2], cl
	MOV eax, 1
	INT 80h 
