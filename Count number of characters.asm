
.MODEL SMALL
.STACK 100H

.DATA

M1 DB "ENTER ANYTHING YOU WANT: $"
M2 DB 0AH,0DH,"YOUR INPUT TOTAL CHARACTER: $"

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
   MOV AH,9
   LEA DX,M1
   INT 21H
   
   MOV CX,0
   MOV AH,1
   INT 21H
   
   COUNT:
   
   CMP AL,0DH
   JE DISPLAY_
   INC CX
   INT 21H
   
   
   JNE COUNT
   
   DISPLAY_:
   
   MOV AH,9
   LEA DX,M2
   INT 21H
 
  
        MOV DX,CX
        ADD DX,30H
        MOV AH,02H
        INT 21H   
  
   
   MOV AH,4CH
   INT 21H
   
   MAIN ENDP  

END MAIN
   




