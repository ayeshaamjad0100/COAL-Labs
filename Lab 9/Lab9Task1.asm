;Ayesha Amjad 82690
org 100h
.model small
.stack 100h
.data
msg1 db 13,10,'A is greater than B$'
msg2 db 13,10,'B is greater than A$'
msgA db 'Enter A: $'
msgB db 13,10,'Enter B: $'
.code
main proc
mov ax, @data
mov ds, ax

mov dx, offset msgA
mov ah, 9
int 21h

mov ah, 1
int 21h

mov bl, al

mov dx, offset msgB
mov ah, 9
int 21h

mov ah, 1
int 21h

mov cl, al

cmp bl, cl
jg label1

mov dx, offset msg2
mov ah, 9
int 21h
jmp ex

label1:
mov dx, offset msg1
mov ah, 9
int 21h

ex:
ret
main endp
end main