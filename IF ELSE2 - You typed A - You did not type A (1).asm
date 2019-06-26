.8086
.MODEL SMALL
.DATA
  
  INPUT_M DB 10,13,'ENTER CHARACTER',0DH,0AH,'$'
  MESSAGE1 DB 10,13,'YOU TYPED "A"','$' 
  MESSAGE2 DB 10,13,'YOU DID NOT TYPE "A"','$'
  
  CHAR DB " ",'$' 
   
  
.CODE
  MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX

    MOV DX,OFFSET INPUT_M
    MOV AH,09
    INT 21H

    MOV AH,01
    INT 21H
    MOV CHAR,AL 
    CMP CHAR,'A'
    JE EQUAL
    MOV DX,OFFSET MESSAGE2
    MOV AH,09
    INT 21H
    JMP END 
       
    EQUAL:
       MOV DX,OFFSET MESSAGE1
       MOV AH,09
       INT 21H
       JMP END 
   
       
 
END:    
    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN