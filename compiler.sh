#!bin/bash
nasm -f elf "$1.s" -o "$1.o" && gcc -no-pie -m32 "$1.o" -o $1 && rm -f "$1.o"
