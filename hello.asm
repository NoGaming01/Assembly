; First time writing code in Assembly

section        .text                   ; declare the .text section
global         _start                  ; delcare start
_start:                                ; entry point
    mov edx, len
    mov ecx, msg

    mov ebx, 1

    mov eax, 4
    int 0x80

    mov eax, 1
    int 0x80

section        .data                   ; declare the .data section
    msg        db "Hello, World!"      ; The message
    len        equ $ -msg
