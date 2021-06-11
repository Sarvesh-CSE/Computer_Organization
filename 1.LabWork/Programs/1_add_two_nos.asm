.model small; small model
.stack 64h; initialize stack segment

.data
    num1 db "Enter 1st character or number: $"
    num2 db 0AH, "Enter 2nd character or number: $"
    result db 0AH, "The Sum is: $"

.code
    begin proc near
        mov ax, seg num1
        mov ds, ax
 
        mov ah, 09; prints the result in the screen
        mov dx, offset num1; moves the value of string variable to dx register
        int 21h; system interrupt
 
        mov ah, 1h; read character, input stored in al
        int 21h
        mov bl, al
 
   
        mov ax, seg num2
        mov ds, ax
   
        mov ah, 09; prints the result in the screen
        mov dx, offset num2; moves the value of string variable to dx register
        int 21h; system interrupt
 
        mov ah, 1h; read character, input stored in al
        int 21h
        mov cl, al
        
        sub bl, 30h
        sub cl, 30h
        add bl, cl
        add bl, 30h
 
        mov ax, seg result
        mov ds, ax
   
        mov ah, 09; prints the result in the screen
        mov dx, offset result; moves the value of string variable to dx register
        int 21h; system interrupt
   
        mov dl, bl
        mov ah, 2h
        int 21h
   
    begin endp
    end begin