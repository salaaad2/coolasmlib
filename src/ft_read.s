global ft_read

 ; rdi fd
 ; rsi message
 ; rdx len

section .text

ft_read:
    mov rax, 0                  ;3 :  syscall
    mov rbx, rdi
    mov rcx, rsi
    mov rdx, rdx
    syscall
    ret
