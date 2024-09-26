


.model small      
.stack 100h
.data
a         db  13, 'Please Enter first number (2 Digit): $'
b         db  10,13, 'Please Enter second number (2 Digit): $'
c         db  0AH, 10,13, 'sum is:  $'
d         db  10,13, 'difference is: $'
n1         db  0
n2         db  0
d1         db  0
d2         db  0
ans        db  0
nega       db  '-$' 


.code
main proc

mov ax, @data
mov ds, ax

1st:
mov dx, offset a  
mov ah, 9
int 21h

mov ah, 1      
int 21h

cmp al, '0'      
jb 1st
cmp al, '9'
ja 1st

sub al, 30h      
mov d1, al
mov ah, 1      
int 21h

cmp al,'0'      
jb 1st
cmp al,'9'
ja 1st

sub al, 30H      
mov d2, al
mov al, d1     
mov bl, 10
mul bl
mov n1, al     
mov al, d2
add n1, al

2nd:
mov dx, offset b  
mov ah, 9
int 21h

mov ah, 1      
int 21h

cmp al, '0'     
jb 2nd
cmp al, '9'
ja 2nd
sub al, 30H     
mov d1, al
mov ah, 1      
int 21h

cmp al, '0'   
jb 2nd
cmp al, '9'
ja 2nd
sub al, 30H     
mov d2, al
mov al, d1
mov bl, 10
mul bl
mov n2, al
mov al, d2
add n2, al


Addition:
mov bl, n1
add bl, n2

call change
mov dx, offset c
mov ah, 9
int 21h
mov dl, bl
mov ah, 2
int 21h
mov dl, bh 
mov ah, 2
int 21h

mov dl, ans
mov ah, 2
int 21h

Subtraction:
mov bl, n1
cmp bl, n2
jl sign
sub bl, n2

call change
mov dx, OFFSET d
mov ah, 09H
int 21h
mov dl, bl
mov ah, 02h
int 21h

mov dl, bh
mov ah, 02h
int 21h

mov dl, ans
mov ah, 02h
int 21h

mov ah, 4ch
int 21h

sign:
mov bl, n2
sub bl, n1

call change
mov dx, offset d
mov ah, 09H
int 21h

mov dx, offset nega  
mov ah,09H
int 21h

mov dl, bl
mov ah, 02h
int 21h

mov dl, bh
mov ah, 02h
int 21h

mov dl, ans
mov ah, 02h
int 21h

mov ah, 4Ch      
int 21h

main endp

change proc
mov ah, 0
mov al, bl
mov bl, 10
div bl
mov bl, al
mov bh, ah
add bh, 30h     
mov ans, bh
mov ah, 0
mov al, bl
mov bl, 10
div bl
mov bl, al
mov bh, ah
add bh, 30h      
add bl, 30h    
ret

change endp

end