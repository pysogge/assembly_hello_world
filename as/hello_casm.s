.section __DATA,__data
str:
  .string "Hello, World ASM-C!\n"

.section __TEXT,__text
.globl _main
_main:
pushq	%rbp
movq	%rsp, %rbp
movq    str@GOTPCREL(%rip), %rdi
movb	$0x0, %al
callq	_printf
xorl	%eax, %eax
popq	%rbp
retq