.model small
.stack 100h
.data
msg1 db 'Enter first number: $'
msg2 db 13,10,'Enter second number: $'
msg3 db 13,10,'Quotient = $'
msg4 db 13,10,'Remainder = $'
.code
main proc
mov ax,@data
mov ds,ax
mov dx,offset msg1
mov ah,9
int 21h
mov ah,1
int 21h
sub al,48
mov bl,al
mov dx,offset msg2
mov ah,9
int 21h
mov ah,1
int 21h
sub al,48
mov ah,0
div bl
mov cl,al
mov ch,ah
mov dx,offset msg3
mov ah,9
int 21h
mov dl,cl
add dl,48
mov ah,2
int 21h
mov dx,offset msg4
mov ah,9
int 21h
mov dl,ch
add dl,48
mov ah,2
int 21h
mov ah,4ch
int 21h
main endp
end main