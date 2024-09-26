.model small
.stack 100h

.data

.code


main proc
    
    mov cx,80
    
    start:
    
    mov ah,2
    mov dl,'*'
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    
    loop start
    
    main endp
end main