nasm -f elf32 enmascarar_asm.asm -o enmascarar_asm.o;
gcc -m32 -o main enmascarar_asm.o main.c;
./main;