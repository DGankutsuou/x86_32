section .data
section .text
global _start
_start:
	MOV eax, 5
	MOV ebx, 3
	CMP eax, ebx
	JL _true
	JMP _false
_false:
	MOV ecx, 1
	JMP _exit
_true:
	MOV ecx, 2
_exit:
	MOV eax, 1
	INT 80h
