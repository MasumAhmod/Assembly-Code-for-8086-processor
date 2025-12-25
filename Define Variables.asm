.model small
.stack 100h
.data

var db 35h
char db 'T'

.code
mov ax,@data
mov ds,ax

mov ah,1
int 21h
mov bl,al
mov cl,var 
add bl,cl
sub bl,30h
;taking input a value and add with defining variable


mov ah,2
mov dl,bl  
int 21h


