.model small
.stack 100h
.data

newl db 10,13, "$"
msg1 db "Number is Even$"    
msg2 db "Number is ODD$"

.code
mov ax,@data
mov ds,ax  

mov ah,1
int 21h

mov bl,02h
div bl
;division al/bl       
;questioned store in AL and reminder in AH

cmp ah,0
je Even 

mov ah,9
lea dx,newl
int 21h
       
mov ah,9
lea dx,msg2
int 21h
jmp end

Even:
mov ah,9
lea dx,newl
int 21h
       
mov ah,9
lea dx,msg1
int 21h
jmp end

end:
mov ah,4ch
int 21h






