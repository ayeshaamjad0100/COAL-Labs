; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt
;Ayesha Amjad 82690
org 100h
.model small
.data
.code
main proc
mov cx,3
mov bx,2
L1:
push cx
mov cx,bx
mov dl,'*'
L2:
mov ah,2
int 21h
loop L2

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

pop cx
loop L1

mov ah,4ch
int 21h
main endp
end main
ret