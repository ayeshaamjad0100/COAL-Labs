org 100h
.data
.code
main proc
    mov dl, 65
    mov ah, 2h
    INT 21H
    mov dl, 121
    mov ah, 2h
    INT 21H
    mov dl, 101
    mov ah, 2h
    INT 21H
    mov dl, 115
    mov ah, 2h
    INT 21H
    mov dl, 104
    mov ah, 2h
    INT 21H
    mov dl, 97
    mov ah, 2h
    INT 21H
    mov dl, "8"
    mov ah, 2h
    INT 21H
    mov dl, "2"
    mov ah, 2h
    INT 21H
    mov dl, "6"
    mov ah, 2h
    INT 21H
    mov dl, "9"
    mov ah, 2h
    INT 21H
    mov dl, "0"
    mov ah, 2h
    INT 21H
    main endp
end main