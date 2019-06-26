.8086
.MODEL SMALL
.DATA
  
  INPUT_M DB 10,13,'ENTER CHARACTER',0DH,0AH,'$'
  MESSAGE1 DB 10,13,'YOU TYPED ' 
 
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
    JL lower_check
    CMP CHAR,'Z'
    JG lower_check
    MOV DX,OFFSET MESSAGE1
    MOV AH,09
    INT 21H
    JMP END 
      
   lower_check:  
   
    CMP CHAR,'A'
    JL lower_check
    CMP CHAR,'Z'
    JG lower_check
    MOV DX,OFFSET MESSAGE1
    MOV AH,09
    INT 21H
    JMP END
    
        JMP END 
   
       
 
END:    
    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN