# Assembly Hello World

Running on Apple M1, 2020; O.S. version 12.1

## Compile (Full)
```
as hello_asm.s -o hello_asm.o
ld hello_asm.o -e _main -lc -o hello_asm.out -macosx_version_min 12.0 -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem
./hello_asm.out
```

## Compile (Build)
```
sh build_hello_asm.sh
```

Show last return code:
```
echo $?
```

## Projects

## Ref
To pull assembly code from a compiled c file:
```
otool -tv hello_world.out
```

### Setup 

#### Install NASM on Mac
```bash
brew install nasm
```