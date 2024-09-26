.model small      

.data               ;data section
  message db  " Enter a number $"
  message2 db " Enter another number $"
  message3 db "  Subtraction result is:$"
  message4 db "  = $"
.code
    main proc

       mov ax, seg message  ;3shan minf3sh nn2l el seg msg direct
       mov ds, ax           ;el ds first part mn l string
       mov dx, offset message   ;
       mov ah, 9h
       int 21h      ;3shan y-do it , le print l strings on the screen

       mov ah, 1h  ;read character wl input stored in al
       int 21h                                            

       mov bl, al


       mov ah, 0Eh       ;print new line sequence
       mov al, 0Dh
       int 10h
       mov al, 0Ah
       int 10h

       mov ax, seg message2     ;print msg 2
       mov ds, ax
       mov dx, offset message2
       mov ah,9h
       int 21h 

       mov ah, 1h
       int 21h  

       mov cl, al   

       mov ah, 0Eh       ;print new line sequence
       mov al, 0Dh
       int 10h
       mov al, 0Ah
       int 10h

       


       mov ax, seg message3
       mov ds, ax
       mov dx, offset message3
       mov ah,9h
       int 21h 

    

       sub bl, 30h       ;3shan byd5al l 7aga int fa 3yzen n7wlo le
       sub cl, 30h       ;decimal b3den nrg3o int tani


       sub bl, cl       

       add bl, 30h      ;rg3nah int xD

       mov dl, bl      ;bl 3shan hya ely fiha el sum
       mov ah, 2h
       int 21h
    endp        ;end main


end main        ;end the program