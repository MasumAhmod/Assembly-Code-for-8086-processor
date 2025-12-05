.model small
.stack 100h
.data

var db 35h
char db 'T'
msg db "Welcome to Asssembly Language$"

.code
mov ax,@data
mov ds,ax

mov ah,9 ;compiler will know a massege will display
lea dx,msg  ;LOAD EFFECTIVE ADDRESS
int 21h



