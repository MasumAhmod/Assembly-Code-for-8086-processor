.model small
.stack 100h
.data

var db 35h
char db 'T'
msg1 db "Welcome to Asssembly Language$" 
msg2 db "Please Enter a input : $" 
msg3 db 10,13, "you Entered : $" ;this also take your console to newline before print this massege

.code
mov ax,@data
mov ds,ax

mov ah,9
lea dx,msg1  
int 21h 

mov ah,2
mov dl,10
int 21h

mov ah,2
mov dl,13
int 21h
;this upper part and lower part will take console in a newline
mov ah,9                                  
lea dx,msg2
int 21h

mov ah,1
int 21h
mov cl,al

mov ah,9
lea dx,msg3
int 21h 

mov ah,2
mov dl,cl
int 21h




