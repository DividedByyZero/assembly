.MODEL SMALL
.STACK 100h
.DATA  


lbk    db 13,10,'$'   ;LINE BREAK.




.code

main proc  
    mov ax,@data
    mov ds,ax
    
    mov cx,255
    mov al,0
     
    mov ah,2  
LOOP:
    add al,30h  ;numarical to ascii
    mov ah,0eh  ;bios function to print ancii char
    int 10h     ;bios interrrupt
    sub al,30h  ;set al value ascii to numeric

    inc al
    cmp al,255  ;condition check
    jne LOOP    ;if false 
    int 21h
    
    
    
    
    main endp
end main