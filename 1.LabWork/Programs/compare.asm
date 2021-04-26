title compare (exe) compare two numbers
dataseg segment para 'data'
x db ?
y db ?
nm1 db 0ah,0dh,'enter first number',0ah,0dh,'$'
nm2 db 0ah,0dh,'enter second number',0ah,0dh,'$'
msg1 db 0ah,0dh,'first number is greater than second number',0ah,0dh,'$'
msg2 db 0ah,0dh,'first number is equal to second number',0ah,0dh,'$'
msg3 db 0ah,0dh,'first number is less than second number',0ah,0dh,'$'
new_line db 0ah,0dh,'$'
dataseg ends

codeseg segment para 'code'
    assume ds:dataseg,cs:codeseg
     main proc far
           mov ax,dataseg
           mov ds,ax
           mov ah,09h
           lea dx,nm1
           int 21h
              ;user enter x
           mov ah,01
           int 21h
           mov x,al
              ;user enter y
           mov ah,09h
           lea dx,nm2
           int 21h

           mov ah,01
int 21h
mov y,al

mov bl,x
mov dl,y
cmp bl,dl
jg l1
je l2
lea dx,msg3
jmp l

l1:lea dx,msg3
    jmp l
l2:lea dx,msg2
l:mov ah,09h
int 21h

mov ah,4ch
int 21h

main endp
codeseg ends
end main
end