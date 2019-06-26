.MODEL SMALL
.STACK 100H
.DATA
     INMSG DB 10,13,"ENTER NUMBER : $"
     GRADE DB 10,13,"YOUR GRADE IS : $"
      WRONG_MSG DB 10,13,"ERROR ! WRONG INPUT $"
.CODE                                  

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,INMSG
    INT 21H    
    
    ;
    
    MOV AH,1
    INT 21H
      SUB AX,30H 
     
    MOV BL,AL
    
     
     
    CMP BL,3
    JLE STAGE_C   
    
    CMP BL,6
    JLE STAGE_B
    
    CMP BL,9
    JLE STAGE_A  
    
   
    
    STAGE_C:
    
    MOV AH,9
    LEA DX,GRADE
    INT 21H
    MOV AH,2
    MOV DL,'C'
    INT 21H
    JMP END
    
        STAGE_B:
    
    MOV AH,9
    LEA DX,GRADE
    INT 21H
    MOV AH,2
    MOV DL,'B'
    INT 21H
    JMP END   
    
        STAGE_A:
    
    MOV AH,9
    LEA DX,GRADE
    INT 21H
    MOV AH,2
    MOV DL,'A'
    INT 21H
 

END:
 
MOV AH,4CH
INT 21H

ENDP
END MAIN 