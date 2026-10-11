# Learning Assembly to interact with the system.
.global _start
.intel_syntax noprefix

.data
message:
    .asciz "Message!"

.bss
input:
    .skip 256

.text
_start:
    mov rax, 1
    mov rdi, 1
    lea rsi, [message]
    mov rdx, 32
    syscall

    # Graceful Exit
    call exit

exit:
    mov rax, 60
    mov rdi, 0
    syscall
