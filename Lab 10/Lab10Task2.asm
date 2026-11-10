;Ayesha Amjad 82690
org 100h
.model small
.stack 100h
.data
array db 5 DUP('$')
.code
main proc
    mov ax, @data
    mov ds, ax

    mov si, offset array
    mov cx, 5

print_loop:
    mov dl, [si]
    mov ah, 2
    int 21h

    inc si
    loop print_loop

    mov ah, 4Ch
    int 21h
main endp
end main