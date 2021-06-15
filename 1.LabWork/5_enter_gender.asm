.model small
.code
.stack 64h
.data
 
     Ask DB 0AH, "Please Enter either M or F for your Gender:", 0DH, 0AH, '$'
     Male DB 0AH, 0DH, "Oh! So you are a Boy! $ "
     Female DB 0AH, 0DH," Oh! So you are a Girl! $ "
     Other DB 0AH, 0Dh," Oh! Your Gender input is not found in database $ "
   
 .code
    begin proc near
   
    mov ax, @data
    mov ds, ax
   
    mov ah, 9
    mov dx, offset Ask
    mov ah, 09
    int 21h
   
    mov ah, 1h
    int 21h
   
    mov bl, 'M'
      cmp bl, al
    je Boy
   
    mov bl, 'F'
     cmp bl,al
    je Girl
   
   
 
   false:
    mov ah, 09
    mov dx, offset Other
    jmp print
   
    Boy:
     mov ah, 09
    mov dx, offset Male
    jmp print
   
    Girl:
     mov ah, 09
     mov dx, offset Female
    jmp print
       
   
   
   
 

    print:
    MOV AH, 09
    INT 21h
         
 
 
   
     mov ah, 4ch
     int 21h
       
   
    begin endp
   
end begin