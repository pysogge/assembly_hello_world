as hello_asm.s -o ./exec/hello_asm.o
ld ./exec/hello_asm.o -e _main -lc -o ./exec/hello_asm.out -macosx_version_min 12.0 -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem
./exec/hello_asm.out