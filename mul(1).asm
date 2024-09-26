include 'emu8086.inc'
.stack 100h
.model small
.data

     m db ?
     n db ?

.code
    main proc
        
    mov ax,@data
    mov ds,ax
        
    print 'Enter your  first number:'
    mov ah,01h
    int 21h
    sub al,48
    mov bl,al
    
    mov dl,10    ;newline
    mov ah,02h
    int 21h
    
    mov dl,13    ;carriage return
    mov ah,02h
    int 21h
    
    print 'Enter your  Second number:'
    mov ah,01h
    int 21h
    sub al,48
  
    mul bl
    mov bl,al
    add bl,48
    
    mov dl,10    ;newline
    mov ah,02h
    int 21h
    
    mov dl,13    ;carriage return
    mov ah,02h
    int 21h
    
    print 'Your character:'
    mov dl,bl
    mov ah,02h
    int 21h
    
   mov ah,04ch
   int 21h
    
    main endp    
end main
