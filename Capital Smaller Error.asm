.MODEL SMALL
.DATA
   MSG1 DB 10,13,"YOU ENTERED CAPITAL $"
    MSG2 DB 10,13,"YOU ENTERED LOWER $" 
     MSG3 DB 10,13,"YOU ENTERED ERROR $"  
     CHAR DB ? ,"$"
.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H 
    
    MOV CHAR,AL  
    CMP CHAR,'A'
    JL ERROR
    CMP CHAR,'Z'
    JlE YOU_CAP
    
    CMP CHAR,'a'
    JGE YOU_SMALL 
     JMP END
    
    JMP ERROR
    
    YOU_CAP:
    MOV AH,9
    LEA DX,MSG1
    INT 21H 
    JMP END
    
      YOU_SMALL:
    MOV AH,9
    LEA DX,MSG2
    INT 21H 
    JMP END   
    
    ERROR:
     
    MOV AH,9
    LEA DX,MSG3 
    INT 21H
   
   
   END:
   
   MOV AH,4CH
ENDP
END MAIN
    
    