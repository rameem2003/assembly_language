.MODEL SMALL
.STACK 100H

.DATA

A DB 2
B DB 3
C DB 4

.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS,AX
    
    
    MOV AL, A
    MOV BL, B
    MOV CL, C
    
    ADD AL,BL ; AL = AL + BL
    ADD AL,CL   
    
    ADD AL,48
    
    
    MOV AH,2
    MOV DL, AL
    INT 21H
    
    MAIN ENDP
END MAIN