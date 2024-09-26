.model small
.stack 100
.data     

    a db 0
    prompt db 'Enter a Uppercase  Word:$' 
    prompt1 db 'Lowercase  letter is:$'
    newline db 13,10,'$'
.code  

main proc
    mov ax,@data
    mov ds,ax
    
   
    lea dx, prompt  ;Show prompt
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    add al,20h
    mov a,al
    int 21h
   
   
    mov ah,2
    mov dl,0ah        ;getting new line
    int 21h
    
    mov ah, 2
    mov dl,0dh         ;set pointer to left margine
    int 21h
     
    lea dx, prompt1      ;Show prompt
    mov ah,9
    int 21h
   
    mov ah,2
    mov dl,a
    int 21h
    
    
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main  