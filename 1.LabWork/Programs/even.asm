page 60,132
title  prime(exe) even number determination
stack segment para stack 'stack'
      dw 32 dup (0)
stack ends

dataseg segment para 'data'
val1 db ?
nl1 db 0ah,0dh,'enter no:','$'
nl2 db 0ah,0dh,'it is even','$'
nl3 db 0ah,0dh,'it is odd','$'
dataseg ends

codeseg segment para 'code'
assume ss:stack,ds:dataseg,cs:codeseg
main proc far
  mov ax,dataseg
  mov ds,ax

  lea dx,nl1
  mov ah,09h
  int 21h

  mov ah,01h
  int 21h

  mov val1,al
  mov ah,00
  mov cl,2
  mov al,val1
  div cl
  cmp ah,00
  jz lbl2 
  jnz lbl3
  
lbl2:
  mov ah,09h
  lea dx,nl2
  int 21h
  jmp exit

lbl3:
  mov ah,09h
  lea dx,nl3
  int 21h
  jmp exit

exit:
  mov ah,4ch
  int 21h

main endp
codeseg ends
end main
end