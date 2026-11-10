.model small
.stack 100h
.data
.code
main proc
    mov ah, 1
    int 21h
    sub al, 48
    mov bl, al

    mov dl, '-'
    mov ah, 2
    int 21h

    mov ah, 1
    int 21h
    sub al, 48
    sub bl, al

    mov dl, '='
    mov ah, 2
    int 21h

    add bl, 48
    mov dl, bl
    mov ah, 2
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main