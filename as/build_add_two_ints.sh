as add_two_ints.asm -o ./exec/add_two_ints.o
gcc -arch x86_64 -o ./exec/add_two_ints.out ./exec/add_two_ints.o
./exec/add_two_ints.out