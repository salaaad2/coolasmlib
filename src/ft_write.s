section .text
global ft_write
extern __errno_location

 ; rdi fd
 ; rsi message
 ; rdx len


ft_write:
    mov rax, 0x01                  ;64bit write syscall
    syscall
    test rax, rax
    jnl .return

.error:
    neg rax
    mov rdx, rax
    call __errno_location
    mov [rax], rdx
    mov rax, -1

.return:
    ret
