section .data
	list DQ 1,2,4,0
	string DQ "ABC",0
section .text
global _start
_start:
	MOV eax, 1
	MOV ebx, list
	MOV ecx, string
	INT 80h
