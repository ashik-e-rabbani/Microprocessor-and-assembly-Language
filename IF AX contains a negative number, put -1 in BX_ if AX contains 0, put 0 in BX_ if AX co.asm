.MODEL SMALL
.DATA 

.CODE
MAIN PROC
    
    MOV AX,-1
    CMP AX,0			        ; test AX	
      JL    NEG			        ; AX<0
      JE    ZERO			    ;AX=0
      JG    POS			        ;AX>0
      NEG:  MOV BX,-1		    ; put -1 in BX
      JMP END_CASE	            ; and exit
       
      ZERO:  
      MOV BX,0 		            ; put 0 in BX
      JMP END_CASE	            ; and exit
     
    POS: MOV BX,1		        ; put -1 in BX
    
    END_CASE:


MAIN ENDP
END MAIN
