;Ayesha Amjad 82690
org 100h
.model small
.stack 100h
.data
msg1 db 'Number is positive.$'
msg2 db 'Number is zero.$'
msgA db 'Enter a number(non negative): $'
.code
main proc
mov dx, offset msgA
mov ah, 9
int 21h

mov ah, 1
int 21h

mov bl, al

mov cl, 48

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