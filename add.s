section .data

section .text
global _start
_start:
	MOV eax, 0x1
	MOV ebx, 0x2
	ADD ebx, eax
	MOV cl, 0xFF
	MOV dl, 0x1
	ADD cl, dl
	ADC ch, 0x0
	INT 80h
