section .text
    global main
    extern ExitProcess
main:
    sub rsp, 28h
    mov ecx, 42
    call ExitProcess