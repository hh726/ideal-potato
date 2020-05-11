section .data
    msg db "Floorduck Sucks 64", 0xa
    len equ $-msg

section .text

global main

main:
    mov rdx, len
    mov rsi, msg
    mov rax, 1
    mov rdi, 1
    syscall

    mov rdi, 0
    mov rax, 3
    syscall