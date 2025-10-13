section .data
	path DB "./file.txt"
section .bss
	buffer: RESB 1024
section .text
global _start
_start:
	MOV eax, 5
	MOV ebx, path
	MOV ecx, 0
	INT 80h
	MOV ebx, eax
	MOV eax, 3
	MOV ecx, buffer
	MOV edx, 1024
	INT 80h
	MOV eax, 1
	MOV ebx, 0
	INT 80h
