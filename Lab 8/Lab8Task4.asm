;Ayesha Amjad 82690
.model small
.stack 100h
.data
.code
main proc
    mov cx,5
    mov dx,56
SmaLet:
    mov ah,2
    int 21h
    sub dx,2

    Loop SmaLet
    mov ah,4ch
    int 21h
main endp
end main