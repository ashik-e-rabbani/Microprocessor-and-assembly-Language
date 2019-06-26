.8086
.MODEL SMALL
.DATA
  
  INPUT_M DB 0AH,0DH,'ENTER CHARACTER',0DH,0AH,'$'
  MESSAGE1 DB 0AH,0DH,'YOU TYPED "A"','$'
  MESSAGE2 DB 0AH,0DH,'YOU DID NOT TYPE "A"','$'
  MESSAGE3 DB 0AH,0DH,'YOU TYPED '
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
    JNE NEQUAL
       
    EQUAL:
       MOV DX,OFFSET MESSAGE1
       MOV AH,09
       INT 21H
       JMP END 
    NEQUAL:
       MOV DX,OFFSET MESSAGE3
       MOV AH,09
       INT 21H 
       MOV AH,2
       MOV DL,AL       
       MOV DX,OFFSET MESSAGE2
       MOV AH,09
       INT 21H
       
       JMP END
       
       
 
END:    
    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN