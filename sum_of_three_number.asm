.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB 'ENTER THE FIRST NUMBER: $'
MSG2 DB 'ENTER THE SECOND NUMBER: $'
MSG3 DB 'ENTER THE THIRD NUMBER: $'

RESULT DB 'THE RESULT IS: $'

.CODE


MAIN PROC
    ;DATA SEGMENT INIT
    MOV AX,@DATA
    MOV DS, AX
    
    
    ;PRINT THE FIRST MSG
    MOV AH,9
    LEA DX, MSG1
    INT 21H  
    
    ;ENTER THE FIRST NUMBER
    MOV AH,1
    INT 21H
    MOV BL,AL
              
              
              
    
    ;CREATE A NEW LINE
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H  
               
               
               
               
    
    ;PRINT THE SECOND MSG  
    MOV AH,9
    LEA DX, MSG2
    INT 21H     
    
    ;ENTER THE SECOND NUMBER
    MOV AH,1
    INT 21H
    MOV CL,AL  
    
              
              
              
    
    ;CREATE A NEW LINE
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H     
    
    
    
    
    ;PRINT THE THIRD MSG 
    MOV AH,9
    LEA DX, MSG3
    INT 21H
    
    ;ENTER THE THIRD NUMBER
    MOV AH,1
    INT 21H
    
    
    
    
    
    
    ;FINAL OUTPUT SHOW
    ADD BL,CL
    ADD BL,AL 
    SUB BL,96
    
    
    ;CREATE A NEW LINE
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H 
    
    
    ;PRINT THE RESULT MSG  
    MOV AH,9
    LEA DX, RESULT
    INT 21H   
    
    ;PRINT THE FINAL OUTPUT
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    

    MAIN ENDP
END MAIN