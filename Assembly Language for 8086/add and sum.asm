.model small
.stack 100h
.data 
.code

;add
mov ah,1
int 21h
mov bl,al

mov ah,1
int 21h
mov cl,al

add bl,cl
;this stores sum in bl
;this will go in range 60 to 78 

sub bl,30h  

mov ah,2
mov dl,bl
int 21h


;sub  
mov ah,1
int 21h
mov bl,al

mov ah,1
int 21h
mov cl,al

sub bl,cl
;this stores sum in bl

add bl,30h  

mov ah,2
mov dl,bl
int 21h