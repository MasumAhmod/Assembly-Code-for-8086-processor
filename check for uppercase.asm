.model small
.stack 100h
.data

newl db 10,13, "$"
msg1 db "This is not an Uppercase Letter$"   
msg2 db "you've Entered : $" 

.code
mov ax,@data
mov ds,ax  

mov ah,1
int 21h
mov cl,al

cmp cl,'A'
jl Error-msg ; if value is less than A,go immediately in error mesage 
cmp cl,'Z'
jg Error-msg

mov ah,9
lea dx,newl;print answer in newline
int 21h 
mov ah,9
lea dx,msg2;print message that you want to see
int 21h
mov ah,2
mov dl,cl;print whatever the value you entered
int 21h
jmp end 

Error-msg:
mov ah,9
lea dx,newl
int 21h 
mov ah,9
lea dx,msg1;error message
int 21h
jmp end

end:
mov ah,4ch
int 21h











