global ft_read

 ; rdi fd
 ; rsi message
 ; rdx len

section .text

ft_write:
    mov rax, 3                  ;4 : read syscall
    mov rbx, rdi
    mov rcx, rsi
    mov rdx, rdx
    int 0x80
    ret
