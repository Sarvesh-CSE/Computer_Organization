page 60,132
title ver (exe) vertical program 
stack segment para stack 'stack'
       dw 32 dup(0)
stack ends 

dataseg segment para 'data'
dataseg ends

codeseg segment para 'code'
main proc far 
assume ss:stack,ds:dataseg,cs:codeseg
     mov ax,dataseg 
     mov ds,ax

start:

        mov ah,02h
        mov cl,41h

skip:

        mov dl,cl
        int 21h
        
        mov dl,0ah
        int 21h
       
        mov dl,0dh
        int 21h
      
        inc cl
        cmp cl,50h
       
  jnz skip
        mov ah,4ch
        int 21h

main endp
codeseg ends
end main 
end 
    