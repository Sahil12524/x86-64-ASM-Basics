section .text
    global main
    extern ExitProcess
main:
    sub rsp, 28h ; Subtract 40 bytes (0x28) from RSP
    mov rcx, 0 ; Exit code 0 (success)
    call ExitProcess ; Exit the program