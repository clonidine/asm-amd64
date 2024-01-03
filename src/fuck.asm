global _start

section .data
message: db 'Hello, world!', 10
msg_len: equ $ - message

SYS_WRITE equ 1
SYS_EXIT equ 60

section .text
_start:
    jmp print
    jmp exit
print:
    mov rax, SYS_WRITE
    mov rdi, 1
    mov rsi, message
    mov rdx, msg_len
    syscall
exit:
    mov rax, SYS_EXIT
    xor rdi, rdi
    syscall
