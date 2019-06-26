.MODEL SMALL
.DATA
 A DB ? ,"$"         
 M1 DB 10,13,">>> YOUR STARS : $"
.CODE  

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX  
    
    MOV AH,1 
   
    INT 21H

MOV CL,AL
SUB CL,30H 

  MOV AH,9
  LEA DX,M1
  INT 21H

THREE:
 
 MOV DL,2AH 
 


CMP CL,0 

JE END

MOV AH,2


INT 21H

LOOP THREE

END:
MOV AH,4CH
INT 21H

