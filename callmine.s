extern sumer
extern exit

section .data
	a DB 2
	b DB 3
section .text
global main
main:
	XOR eax, eax
	MOV al, byte [b]
	PUSH eax
	MOV al, byte [a]
	PUSH eax
	CALL sumer
	PUSH eax
	CALL exit
