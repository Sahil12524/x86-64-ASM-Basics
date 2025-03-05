section .data
    message db "Hello, World!", 0  ; The message to print
    msg_len equ $ - message         ; Calculate message length
    bytes_written dd 0              ; Store bytes written

section .text
    global main
    extern ExitProcess, GetStdHandle, WriteConsoleA

main:
    ; Ensure proper stack alignment (16-byte boundary)
    sub rsp, 8                    ; Allocate space for alignment (adjust if needed)

    ; Get handle to the console output
    mov rcx, -11             ; STD_OUTPUT_HANDLE = -11
    call GetStdHandle        ; Returns handle in RAX

    ; Check if GetStdHandle returned valid handle
    test rax, rax
    jz handle_error          ; If handle is 0 (invalid), jump to error handling

    ; Write message to console
    mov rcx, rax            ; First argument: Handle (console output)
    mov rdx, message        ; Second argument: Pointer to message
    mov r8, msg_len         ; Third argument: Message length
    mov r9, bytes_written   ; Fourth argument: Pointer to store bytes written
    call WriteConsoleA       ; Call Windows API

    ; Exit program (successfully)
    mov ecx, 0              ; Exit code 0
    call ExitProcess        ; Call Windows API

handle_error:
    ; Output error message if GetStdHandle failed
    mov rcx, -11            ; STD_OUTPUT_HANDLE = -11
    call GetStdHandle
    mov rcx, rax            ; Handle to console output
    mov rdx, message        ; Pointer to error message
    mov r8, msg_len         ; Message length
    mov r9, bytes_written   ; Store bytes written
    call WriteConsoleA       ; Output the error message

    ; Exit program with failure
    mov ecx, 1              ; Exit code 1 (failure)
    call ExitProcess        ; Call Windows API
