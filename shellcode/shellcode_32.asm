[BITS 32]
global main

section .text

main:
	xor eax, eax
	push eax		 ; push a null byte first
	push 0x68732f2f  ; use print /x "/bin//sh" in gdb to get values
	push 0x6e69622f  ; "hs//" and "nib/"

	mov ebx, eip	 ; move stack to ebx
	xor ecx, ecx	 ; zero out ecx
	xor edx, edx     ; zero out edx
	mov al, 11		 ; load execve into lower byte of eax
	int 0x80         ; syscall





