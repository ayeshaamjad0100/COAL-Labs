.model small
.stack 100h
.data
msg1 DB "Enter first number: $"
msg2 DB "Enter second number: $"
msg3 DB "Final result is: $"
.code
main proc
mov ax,@data
mov ds,ax
mov dx, offset msg1
mov ah,9
int 21h
mov ah,1
int 21h
sub al,48
mov bl,al
mov ax,@data
mov ds,ax
mov dx, offset msg2
mov ah,9
int 21h
mov ah,1
int 21h
sub al,48
mul bl
mov bl,10
div bl
mov cl,al
mov ch,ah
cmp cl,0
mov dl,cl
add dl,48
mov ah,2
int 21h
mov dl,ch
add dl,48
mov ah,2
int 21h
mov ah,4ch
int 21h
main endp
end main