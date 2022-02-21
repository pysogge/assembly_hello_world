# Assembly Hello World

Running on Apple M1, 2020; O.S. version 12.1

## Compile
```
as hello_asm.s -o hello_asm.o
ld hello_asm.o -e _main -lc -o hello_asm.out -macosx_version_min 12.0 -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem
./hello_asm.out
```

## Projects

### Hello ASM
```
as hello_asm.s -o hello_asm.o
ld hello_asm.o -e _main -lc -o hello_asm.out -macosx_version_min 12.0 -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem
./hello_asm.out
```

## Ref
```
http://www.idryman.org/blog/2014/12/02/writing-64-bit-assembly-on-mac-os-x/
```