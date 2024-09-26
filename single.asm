.model small
.stack 100h

.data
    prmpt db 'Enter a char :$'
    a db 0

.code
main proc
    
    mov ax, @data
    mov ds, ax

    mov ah,9
    lea dx,prmpt
    int 21h
    
    mov ah, 1        
    int 21h         
    mov a, al       
     
    mov ah,2
    mov dl,0ah
    int 21h
    
    mov ah,2
    mov dl,0dh
    int 21h
    
    mov dl,a
    
    mov ah, 2        
    int 21h          

    
    mov ah, 4Ch      
    int 21h          

end main
