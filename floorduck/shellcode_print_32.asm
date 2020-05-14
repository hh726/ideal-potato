[BITS 32]
section .data

section .text

global main

main:
    jmp MESSAGE


GOBACK:
    xor eax, eax
    mov al, 4
    xor ebx, ebx
    mov bl, 1

    pop ecx
    xor edx, edx
    mov dl, 19
    int 0x80

    xor eax, eax
    mov al, 1
    xor ebx, ebx
    mov bl, 1
    int 0x80


MESSAGE:
    call GOBACK

    msg db "Floorduck Sucks 32", 0xa


