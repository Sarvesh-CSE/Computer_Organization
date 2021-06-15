.model small
.code
.stack 64h
.data
 
     Message DB 0AH, "Press a Letter: $"
     Message1 DB 0AH, 0DH, "Yes! You Press a Letter! $"
     Message2 DB 0AH, 0DH, "Oops! did not Press a Letter! $ "
 
   
   
   
 .Code
    begin proc near
   
    mov ax, @data
    mov ds, ax
   
    mov ah, 09
    mov dx, offset Message
    int 21h
   
    mov ah, 1h
    int 21h
    mov bl, 'A'
    cmp bl, al
     jl Letter
    mov bl, '1'
    cmp bl, al
     jne Number
 
   
 
 
       
       
       
   
    Letter:
    mov ah, 09
    mov dx, offset Message1
    jmp print
       
    Number:
     mov ah, 09
     mov dx, offset Message2
    jmp print
   
   
    print:
    MOV AH, 09
    INT 21h
         
     mov ah, 4ch
     int 21h
       
   
    begin endp
   
end begin