.MODEL SMALL
.DATA
 
.CODE
  MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX

    
     
     MOV  AH,1
     INT  21H
     CMP AL, 'y'
     JE THEN
     CMP AL,'Y'
     JE THEN
     JMP ELSE_ 
     
     THEN:
     
     MOV BL,AL
    
     MOV AH,2     
     MOV DL,10
     INT 21H
     MOV DL,13
     INT 21H 
        
     MOV DL,BL
     INT 21H
     JMP END_IF
      ELSE_:
    END_IF:
    

    MOV AH,4CH
    INT 21H

MAIN ENDP
END MAIN