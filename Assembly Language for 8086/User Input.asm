.model small
.stack 100h
.data
.code

mov ah,1
int 21h
;after this , program will ask you for input(1 digit)
;the input will stored in AL register in  hex form

mov ah,2 
mov dl,al
int 21h


