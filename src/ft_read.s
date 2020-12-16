section .text
global ft_read
extern __errno_location

 ; rdi fd
 ; rsi message
 ; rdx len


ft_read:
    mov rax, 0x00                  ;64bit read syscall
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
