INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
    
.CODE
MAIN PROC  
    MOV AH,1
    INT 21H
    SUB AX,30H
    
    MOV BL ,AL  
    
    CMP BL , 3
    JLE IF
    JNL ELSE_IF
    
    IF:
    PRINTN "YOU GOT C GRADE"
    JMP END_IF    
    
    ELSE_IF: 
    
    CMP BL , 6
    JLE ELSE_IF2     
    
    JNL ELSE_IF3
    ELSE_IF2:
    
    PRINTN "YOU GOT B"
    JMP END_IF   
    
    ELSE_IF3:
     CMP BL , 9
    JLE ELSE_IF4
    JNL WRONG   
    
     ELSE_IF4:
    
    PRINTN "YOU GOT A"
    JMP END_IF  
    
     WRONG:
     
     PRINTN " -->  SORRY WRONG INPUT"
    
    
    
    END_IF: 
    
         
    MOV AH , 4CH 
    INT 21H
    MAIN ENDP
END MAIN 
    