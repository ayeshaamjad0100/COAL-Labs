;Ayesha Amjad 82690
org 100h
.model small
.stack 100h
.data
msg1 db 'A$'
msg2 db 'B$'
msg3 db 'C$'
msg4 db 'Enter a number (only 1,2 or 3): $'
.code
main proc
mov ax, @data
mov ds, ax

mov dx, offset msg4
mov ah, 9
int 21h

mov ah, 1
int 21h

mov bl, al
mov cl, 49

cmp bl, cl
je label1

cmp bl, 50
je label2

cmp bl, 51
je label3

mov dx, offset msg4
mov ah, 9
int 21h
jmp ex

label3:
mov dx, offset msg3
mov ah, 9
int 21h
jmp ex

label1:
mov dx, offset msg1
mov ah, 9
int 21h
jmp ex

label2:
mov dx, offset msg2
mov ah, 9
int 21h
jmp ex

ex:
mov ah, 4Ch
int 21h

main endp
end main