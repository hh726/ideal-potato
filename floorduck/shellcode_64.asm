[BITS 64]
section .data

section .text

global main

main:
    jmp short MESSAGE


GOBACK:
    xor rdi, rdi
    mov dil, 1
    xor rax, rax
    mov al, 1

    pop rsi
    xor rdx, rdx
    mov dl, 19
    syscall

    xor rdi, rdi
    xor rax, rax
    mov al, 60  
    syscall


MESSAGE:
    call GOBACK

    msg db "Floorduck Sucks 64", 0xa
