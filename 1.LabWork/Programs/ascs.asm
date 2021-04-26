title ascs (exe)display ascii character set
stack segment para stack 'stack'
         dw 32 dup(0)
stack ends

dataseg segment para 'data'  
            aschar db 00,'$'
            str db 0ah,0dh,"the ascii characters are:",0ah,0dh,0ah,0dh,'$'
            str1 db 0ah,0dh,"_ _ _ _ _ _ _ _ _ _ _",0ah,0dh,0ah,0dh,'$'
           str2 db 0ah,0dh,"_ _ _ _ _ _ _ _ _ _ _",0ah,0dh,0ah,0dh,'$'
dataseg ends

codeseg segment para 'code'
assume ss:stack,ds:dataseg,cs:codeseg
main proc far
      mov ax,dataseg
      mov ds,ax

      mov ah,09h
      lea dx,str
      int 21h

     mov ah,09h
     lea dx,str1
     int 21h

     mov cx,256
     lea dx,aschar

d20:
     cmp aschar,08h
     jb d30
    cmp aschar,0dh
    jbe d40
   
d30:
    mov ah,09h
    int 21h

d40:
    inc aschar
    loop d20

     mov ah,09h
     lea dx,str2
     int 21h
     mov ax,4c00h
     int 21h

main endp
codeseg ends
end main
end     