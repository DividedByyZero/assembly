.MODEL
.STACK 100H
.DATA
   STR DB 'Enter lettersend with *:$'
   msg db 'No capital letter exist'
.CODE

MAIN PROC

MOV AX, @DATA
MOV DS, AX

LEA DX, STR
MOV AH, 9
INT 21H  

    


loop1: 

    MOV AH, 1
    INT 21H

    cmp al,"*"   ;compare with *
    je end       ;je=equel,if compare result is equal to 0 then go end
    cmp al,"A"   ;compare with A
    jb loop1     ;jb = below,if al is below(less than)A then its not a capital
    cmp al,"Z"   ;compare with Z
    ja loop1     ;ja = above,if al is above(grater than)Z then its not a capital
    mov dl,al    ;dl store 1st capital
    mov dh,al    ;dh store latest captil (for 1st capital letter dl=dh)
    
loop2:
        mov ah,1
        int 21h
        cmp al,"*"
        je show     ;if its the ending point show the result
        cmp al,"A"  
        jb loop2
        cmp al,"Z"
        ja loop2
        mov dh,al   ;latest capital
        jmp loop2 
        


show: 
        mov ah,2    ;output dl value (first capital)
        int 21h
         
        mov ah,2
        mov dl,dh   ;mov dh(last capital) to dl
        int 21h



end:     
        mov ax,4ch
        int 21h


MAIN ENDP 
END MAIN 