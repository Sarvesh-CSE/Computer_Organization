.model small
.stack 64h
.data
    Message db "Enter the character you want to loop: $"
    Message2 db 0AH, 0AH, "$"
.code
    begin proc near
   
    mov ax, @data
    mov ds, ax
   
    mov ah, 09
    mov dx , offset Message
    int 21h
   
    mov ah, 1h
    int 21h
   mov bl, al
 
    mov ah, 09
    mov dx, offset Message2
    int 21h
   
    mov cx, 10; the cx register is used to contain the number of iterations
 
    Top:
    mov dl, bl
   
   
    mov ah, 2h
    int 21h
   
    Loop Top
   
    mov ah, 4ch
    int 21h
   
    begin endp
end begin