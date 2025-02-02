.MODEL SMALL
.STACK 100H

.DATA
    CTR DW ?
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AX, 1100
    ADD AX, 1000

    CALL PRES

    L1:
        MOV CX, CTR
        L2:
            POP DX
            ADD DX, 48
            MOV AH, 02H 
            INT 21H
            LOOP L2

    MOV AH, 4CH
    INT 21H

MAIN ENDP

PRES PROC
    MOV CTR, 0
    MOV DX, 0
    MOV BX, 10
    PL:
        DIV BX
        PUSH DX
        MOV DX, 0
        INC CTR
        CMP AX, 0
        JE L1
        JMP PL
    RET
PRES ENDP 

END MAIN