.model small
.stack 100h
.data

msg1 db "two values are equal$"    
msg2 db "1st value is greater$"
msg3 db "2nd value is greater$"

.code
mov ax,@data
mov ds,ax

mov al,05h
mov bl,06h

cmp al,bl
;this will subtract bl from al
 
je display_equal ;jump if equal
jg display_greater ;jump if greater (cl)
jl display_lesser ;jump if lesser (cl)

display_equal:
mov ah,9
lea dx,msg1
int 21h
jmp end

display_greater:
mov ah,9
lea dx,msg2
int 21h
jmp end 

display_lesser:
mov ah,9
lea dx,msg3
int 21h
jmp end

end:
mov ah,4ch
int 21h

