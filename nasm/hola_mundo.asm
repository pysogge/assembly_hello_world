; ------------------------------------------------------------------------------
; Writes "Hola, mundo" to the console using a C library. Runs on Linux or any
; other system that does not use underscores for symbols in its C library. To
; assemble and run:
;
;       /usr/local/bin/nasm -f macho64 hola_mundo.asm && gcc -arch x86_64 -o hola_mundo.out hola_mundo.o && ./hola_mundo.out
; ------------------------------------------------------------------------------

  global _main
  extern _puts

  section .text
_main:
  sub     rsp, 8

  lea     rdi, [message]        ; Use this instead of 'mov rdi, message'
  call    _puts
  add     rsp, 8
  ret

  section .data
message:
default rel                     ; Add 'default rel' under label
  db   "Hola, mundo",0