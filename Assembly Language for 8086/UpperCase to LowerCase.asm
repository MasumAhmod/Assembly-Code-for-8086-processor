.model small
.stack 100h
.data 
.code

mov ah,1
int 21h

mov cl,al
add cl,20h   ;for uppercase to lowercase
;diff of ascii value Uppercae to lowercase is 20h

mov ah,2
mov dl,cl    
int 21h




