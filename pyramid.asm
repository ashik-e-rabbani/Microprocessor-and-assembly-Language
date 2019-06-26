ORG 100H

.MODEL SMALL

.DATA 



RANGE DW 5 

STAR1 DW 1  

.CODE
    
    MAIN PROC   
        
        MOV CX,5
        
        HOME_LOOP:
        
           MOV BX,CX
           
           MOV CX,RANGE
              
              L1:
              
              MOV DL,32
              MOV AH,2
              INT  21H
              
             
                           
              
        
       LOOP L1
        
        DEC RANGE 
        
        MOV CX,STAR1
        K1:
        
             MOV DL,'*'
             MOV AH,2
             INT  21H  
              
            
              
              LOOP K1   
              
              ADD STAR1,2
                
                MOV DL,0AH
                MOV AH,2
                INT  21H
                 
                 MOV DL,0DH
                MOV AH,2
                INT  21H
        
        
        LOOP HOME_LOOP
        
        RET
        
        END MAIN
