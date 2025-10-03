section .data
	list DB 1,2,3,4,0xff
section .text
global _start
_start:
	MOV esi, 0
	MOV bl, 0
	MOV cl, [list + esi]
_loop:
	ADD bl, cl
	INC esi
	MOV cl, [list + esi]
	CMP cl, 0xff
	JE _exit
	JMP _loop
_exit:
	MOV eax, 1
	MOV ebx, 0
	INT 80h
