.model small
.stack 100h
.data
.code

mov ah,2 ; for print something  from DL register
mov dl,35h ; this will print value in this code(ascii vaule)
int 21h ;int meanss here 'interrupt'

mov ah,2
mov dl,'5' ;thi will print the actual value which you put in directly
int 21h 


