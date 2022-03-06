nasm -f macho64 hola_mundo.asm -o ./exec/hola_mundo.o
gcc -arch x86_64 -o ./exec/hola_mundo.out ./exec/hola_mundo.o
./exec/hola_mundo.out