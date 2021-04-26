dataseg segment
  msg db,0ah,0dh,'enter a character:$'
  strg1 db,0ah,0dh,'the entered character is:$'
  temp db ?
dataseg ends

codeseg segment 
assume cs:codeseg,ds:dataseg
start:
         mov ax,dataseg
         mov ds,ax
        
        lea dx,msg
        mov ah,09h
        int 21h
    
        mov ah,01h
        int 21h
        mov temp,al

        lea dx,strg1
        mov ah,09h
        int 21h
        
        mov dl,temp
        mov ah,02h
        int 21h
      
       mov ah,04ch
       int 21h
codeseg ends
end start
end