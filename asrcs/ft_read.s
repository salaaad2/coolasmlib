global ft_read

 ; rdi fd
 ; rsi message
 ; rdx len

section .text

ft_read:
    mov rax, 3                  ;3 :  syscall
    mov rbx, rdi
    mov rcx, rsi
    mov rdx, 5
    int 0x80
    ret
