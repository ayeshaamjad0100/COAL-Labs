; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt
;Ayesha Amjad 82690
org 100h
.model small
.data
    star db '*', '$'
.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 5
    mov di, 1
out_loop:
    push cx
    mov cx, di
in_loop:
    mov dx, offset star
    mov ah, 9
    int 21h
    loop in_loop
    
    call newline

    inc di
    pop cx
    loop out_loop

    mov ah, 4ch
    int 21h
main endp

newline proc
    mov dx, 10
    mov ah, 2
    int 21h
    mov dx, 13
    mov ah, 2
    int 21h
    ret
newline endp

end main
ret