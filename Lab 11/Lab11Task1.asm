;Ayesha Amjad 82690
org 100h
.model small
.data
info db 'Ayesha Amjad 82690'
.code
main proc
start:
    mov si, offset info
    mov cx, 18
push_loop:
    mov al, [si]
    mov ah, 0
    push ax
    inc si
    loop push_loop
    mov cx, 18
pop_loop:
    pop ax
    mov dl, al
    mov ah, 2
    int 21h
    loop pop_loop
    mov ah, 4ch
    int 21h
main endp
end main