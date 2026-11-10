org 100h
.data
.code
main proc
    mov dl, 88
    mov ah, 2h
    INT 21H
    mov dl, 89
    mov ah, 2h
    INT 21H
    mov dl, "X"
    mov ah, 2h
    INT 21H
    mov dl, "Y"
    mov ah, 2h
    INT 21H
    main endp
end main