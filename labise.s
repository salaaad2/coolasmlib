global maxofthree

section .text

maxofthree:
  cmp     edi, esi  ; compare args 1 and 2
  cmovl   edi, esi  ; set edi to the larger
  cmp     edi, edx  ; compare against arg 3
  cmovl   edi, edx  ; set edi to the larger
  mov     eax, edi  ; return value in rax
  ret
