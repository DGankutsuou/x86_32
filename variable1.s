section .data
	num DB 42
section .text
global _start
_start:
	MOV eax, 1
	MOV ebx, num
	INT 80h	
