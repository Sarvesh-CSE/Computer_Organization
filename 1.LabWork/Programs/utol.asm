title utol (exe) change uppercase to lower case

stack segment para stack  'stack'
  dw 32 dup(0)
stack ends

dataseg segment para 'data'
   coname db 'COMPUTER SCIENCe','$'
dataseg ends

codeseg segment para 'code'
    assume ss:stack,ds:dataseg,cs:codeseg
a10main proc far 
                mov ax, dataseg
                mov ds, ax
      
                lea bx, coname
                mov cx, 16
a20:
        mov ah, [bx]
        cmp ah, 41h
         jb a30
        cmp ah, 5ah
        xor ah,00100000b
        mov [bx],ah
a30:
       inc bx
       loop a20

       mov ah,09h
       lea dx,coname
       int 21h
    
       mov ax,4c00h
       int 21h

a10main endp
codeseg ends
end a10main
end         