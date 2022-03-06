; AddTwoInts.asm - adds two 32-bit integers
; Inputs:    r0 = operand 1
;            r1 = operand 2
; Outputs:   r0 = sum

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.code
main PROC
    mov eax, 5
    add eax, 6

    INVOKE ExitProcess,0
main ENDP
END main