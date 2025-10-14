section .data
	path DB "./file2.txt",0
	phrase DB "Hello, Hackers!",0AH,0x0
section .bss
section .text
global _start
_start:
	MOV eax, 5
	MOV ebx, path
	MOV ecx, 101o
	MOV edx, 700o
	INT 80h
	MOV ebx, eax
	MOV eax, 4
	MOV ecx, phrase
	MOV edx, 16
	INT 80h
	MOV eax, 1
	MOV ebx, 0
	INT 80h
