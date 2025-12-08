.model small
.stack 100h
.data

newl db 10,13, "$" 

.code 
mov ax,@data
mov ds,ax

mov cx,0
 
while:
mov ah,1
int 21h

cmp al,13
je count_char

inc cl
jmp while

count_char:
mov ah,9
lea dx,newl
int 21h

add cl,30h

mov ah,2
mov dl,cl
int 21h
jmp end 
 
end:
mov ah,4ch
int 21h





