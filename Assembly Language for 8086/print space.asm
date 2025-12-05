.model small
.stack 100h
.data

msg1 db "Hello$"
msg2 db "World$" ;always give doller sign aafter complete a message ,it will tell complier that it is end of your message

.code
mov dx,@data
mov ds ,dx

mov ah,9
lea dx,msg1 
int 21h

mov ah,2
mov dl,20h
int 21h

mov ah,9
lea dx,msg2
int 21h

