global _start

section .data
message: db 'Hello, world!', 10

section .text
_start:
    jmp print
    jmp exit
print:
    mov rax, 1
    mov rdi, 1
    mov rsi, message
    mov rdx, 14
    syscall
exit:
    mov rax, 60
    xor rdi, rdi
    syscall