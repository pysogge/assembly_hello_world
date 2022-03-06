.data
    a: .long 4
    b: .long 9
    sum: .long 0
    str: .asciz "Sum: %d\n"
.section  __TEXT,__text
    .globl  _main                   ## -- Begin function main
_main:                                  ## @main
    pushq     %rbp                  ## -- Save rbp (address of previous stack frame)
    movq      %rsp, %rbp            ## -- Set rsp to current stack frame    
    subq      $32, %rsp             ## -- Allocate stack space for local variables
    movl      sum(%rip), %esi
    movl      %esi, -4(%rbp)
    movl      %edi, -8(%rbp)
    movq      %rsi, -16(%rbp)
    movl      a(%rip), %esi
    movl      %esi, -20(%rbp)
    movl      b(%rip), %esi
    movl      %esi, -24(%rbp)
    movl      -20(%rbp), %eax
    addl      -24(%rbp), %eax
    movl      %eax, -28(%rbp)
    movl      -28(%rbp), %esi
    leaq      str(%rip), %rdi
    callq     _printf
    addq      $32, %rsp
    popq      %rbp
    retq