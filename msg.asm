.model small
.stack 100
.data     

    msg db 100 

    prompt db 'Enter a message:$'
    
.code  

main proc
    mov ax,@data
    mov ds,ax
    
   
    lea dx, prompt  ;Show prompt
    mov ah,9
    int 21h
    
   
    lea dx,msg
    mov ah,0ah
                    ;for input msg
    int 21h 
            

   
    
    
    
    mov ah,9 
    
    lea dx,msg+2       ; out put the message
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main  