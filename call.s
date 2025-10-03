extern printf
extern exit

section .data
	frmt DB "printf called from x86_32 assembly code to write:", 10, "-> %s", 10, 0
	msg DB "Hello, World!", 0
section .text
global main
main:
	PUSH msg
	PUSH frmt
	CALL printf
	PUSH 42
	CALL exit
