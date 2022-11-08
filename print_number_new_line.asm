.MODEL SMALL
.STACK 100H
.CODE 
MAIN PROC
    ;INPUT
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    
    ;NEW LINE
    
    MOV AH,2
    MOV DL, 10
    INT 21H
    MOV DL, 13
    INT 21H
        
    ;OUTPUT
    MOV AH,2 
    MOV DL,BL
    INT 21H
    
    
    
    MAIN ENDP
END MAIN