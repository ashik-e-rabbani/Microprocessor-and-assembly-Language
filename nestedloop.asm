.model small
.code

main proc
    
    mov cx,5
    mov bx,5
    
    loop1: 
    mov dl,1
    add dl,30h
    
    mov ah,2
    int 21h
    
    loop2: 
    mov dl,5
    add dl,30h
    
    mov ah,2
    int 21h
    
    loop loop2
    
    mov cx,bx
    dec bx
    
    loop loop1
    mov ah,4ch
    int 21h
    