;Ayesha Amjad 82690
.model small
.stack 100h
.data
Msg1 DB "Enter a character: $"
.code
main proc
    mov ax,@data
    mov ds,ax

    mov dx,offset Msg1
    mov ah,9
    int 21h

    mov ah,1
    int 21h

    mov cx,10
    mov dx,ax
SmaLet:
    mov ah,2
    int 21h

    Loop SmaLet
    mov ah,4ch
    int 21h
main endp
end main