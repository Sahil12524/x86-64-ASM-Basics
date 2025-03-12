section .data
    num1 dq 15
    num2 dq 5
    fmt db "Addition: %d", 10, 0
    fmt_sub db "Subtraction: %d", 10, 0
    fmt_mul db "Multiplication: %d", 10, 0
    fmt_div db "Division: %d", 10, 0

section .text
    global main
    extern printf, ExitProcess

main:
    sub rsp, 40 ; Stack alignment (Windows ABI)

    ; Addition
    mov rax, qword [rel num1]
    add rax, qword [rel num2]
    lea rcx, [rel fmt]
    mov rdx, rax
    call printf

    ; Subtraction
    mov rax, qword [rel num1]
    sub rax, qword [rel num2]
    lea rcx, [rel fmt_sub]
    mov rdx, rax
    call printf

    ; Multiplication
    mov rax, qword [rel num1]
    imul rax, qword [rel num2]
    lea rcx, [rel fmt_mul]
    mov rdx, rax
    call printf

    ; Division (RAX / num2)
    mov rax, qword [rel num1]
    cqo
    idiv qword [rel num2]
    lea rcx, [rel fmt_div]
    mov rdx, rax
    call printf

    ; Exit the program
    xor ecx, ecx
    call ExitProcess