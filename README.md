# Assembly Hello World

Running on Apple M1, 2020; O.S. version 12.1

## Compile
```
as hello_asm.s -o hello_asm.o
ld hello_asm.o -e _main -lc -o hello_asm.out -macosx_version_min 12.0 -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem
./hello_asm.out
```

Show last return code:
```
echo $?
```

## Projects

### Hello ASM
```
as hello_asm.s -o hello_asm.o
ld hello_asm.o -e _main -lc -o hello_asm.out -macosx_version_min 12.0 -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem
./hello_asm.out
```

### Hello from C - ASM
```
as hello_casm.s -o hello_casm.o
ld hello_casm.o -e _main -lc -o hello_casm.out -macosx_version_min 12.0 -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem
./hello_casm.out
```

## Ref
To pull assembly code from a compiled c file:
```
otool -tv hello_world.out
```

```
http://www.idryman.org/blog/2014/12/02/writing-64-bit-assembly-on-mac-os-x/
```