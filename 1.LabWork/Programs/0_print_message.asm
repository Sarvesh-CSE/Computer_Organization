.model small                                                ;defines the memory model to be used for the ALP
.stack                                                      ; initialize stack segment

.data                                                       ;data segment begins here
message   db "Hello world, I'm learning Assembly !!!", "$"  ;String gets stored in message 

.code                                                       ;code segment begins here

main   proc
   mov   ax,seg message                                     ;returns segment address for message  or moving segment address of message to ax
   mov   ds,ax                                              ;moving contents of ax into ds register or transfers segment address into ds register

   mov   ah,09                                              ; prints the result in the screen
   lea   dx,message                                         ;load the offset address of message
   int   21h                                                ;system interrupt or call the interrupt handler for DOS input dispatche

   mov   ax,4c00h                                           ;to terminate the program
   int   21h                                                
main   endp 
end main                                                    ;end of program
