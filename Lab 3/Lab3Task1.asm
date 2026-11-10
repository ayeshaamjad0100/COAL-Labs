org 100h
.data
.code
main proc
    mov dl, 50
    mov ah, 2h
    INT 21H
    mov dl, 57
    mov ah, 2h
    INT 21H
    mov dl, "2"
    mov ah, 2h
    INT 21H
    mov dl, "9"
    mov ah, 2h
    INT 21H
    main endp
end main