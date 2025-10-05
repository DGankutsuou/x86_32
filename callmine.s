extern sumer
extern exit

section .data
	a DB 2
	b DB 3
section .text
global main
main:
	PUSH b
	PUSH a
	CALL sumer
	PUSH eax
	CALL exit
