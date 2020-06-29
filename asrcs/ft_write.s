global ft_write

 ; rdi fd
 ; rsi message
 ; rdx len

section .text

ft_write:
    mov rax, 4                  ;4 : write syscall
    mov rbx, rdi
    mov rcx, rsi
    mov rdx, rdx
    int 0x80
    ret
