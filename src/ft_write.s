global ft_write

 ; rdi fd
 ; rsi message
 ; rdx len

section .text

ft_write:
    mov rax, 1                  ;64bit write syscall
    mov rbx, rdi
    mov rcx, rsi
    mov rdx, rdx
    syscall
    ret
