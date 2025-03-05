global main
extern MessageBoxA
extern ExitProcess

section .text
main:
    sub rsp, 28h           ; Align stack (Windows ABI requires 32-byte alignment)

    mov rcx, 0             ; HWND hWnd = NULL
    lea rdx, [rel message] ; LPCSTR lpText (RIP-relative)
    lea r8, [rel title]    ; LPCSTR lpCaption (RIP-relative)
    mov r9d, 0             ; UINT uType = MB_OK
    call MessageBoxA       ; Call MessageBoxA

    mov ecx, 0             ; UINT uExitCode = 0
    call ExitProcess       ; Call ExitProcess

section .data
message db "Hello, World!", 0
title   db "Hello", 0
