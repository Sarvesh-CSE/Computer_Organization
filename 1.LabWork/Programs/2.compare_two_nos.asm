.model small
.code
.stack 64h

.data
 
     Message DB 0AH, "Enter First Number: $"
     Message1 DB 0AH, 0DH, "Enter Second Number: $"
     Message2 DB 0AH, 0DH, "The First Number is Greater Than Second Number $ "
     Message3 DB 0AH, 0DH," The First Number is Less Than Second Number $ "
     Message4 DB 0AH, 0DH," Both Number are Equal $ "
   
   
 .code
    begin proc near
   
    mov ax, @data
    mov ds, ax
   
    mov ah, 09
    mov dx, offset Message
    int 21h
   
    mov ah, 1h
    int 21h
    mov bl, al
   
    mov ah, 09
    mov dx,offset Message1
    int 21h
   
    mov ah, 1h
    int 21h
    mov cl, al
     
    cmp bl, al
    je Equal; je stands for "jump if destination equals source"
    jg Greater; jg stands for "jump if greater"
    jl Less; jl stands for "jump if less"
   
    Greater:
    mov ah, 09
    mov dx, offset Message2
    jmp print
       
    Less:
     mov ah, 09
     mov dx, offset Message3
    jmp print
   
     Equal:
     mov ah, 09
     mov dx , offset Message4
    jmp print
       
   
    print:
    MOV AH, 09
    INT 21h
         
     mov ah, 4ch
     int 21h
   
    begin endp
   
end begin