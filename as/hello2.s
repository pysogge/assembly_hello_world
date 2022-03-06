//
// Assembler program - print "Hello, World!"
//

//
// X0-X2 - Parameters for function services
// X8 - Function number

.global _start // Start of program (address)

// Set Up Params to Print
// Then Call to Execute
_start: mov x0, #1 // #1 = StdOut
    ldr X1, =helloWorldString // String to print
    mov X2, #14 // #14 = Length of String
    mov X8, #64 // #64 = write system call
    svc 0 // Call write system call

// Set up Params to exit
// Then Call to Execute
    mov x0, #0 // #0 = exit
    mov X8, #60 // #60 = exit system call
    svc 0 // Call exit system call