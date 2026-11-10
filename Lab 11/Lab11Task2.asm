;Ayesha Amjad 82690
.model small
.stack 100h
.data
arr db 1,2,3,4,5,6,7,8,9,0
.code
main proc
    mov ax, @data
    mov ds, ax

    mov si, offset arr
    mov cx, 10
push_:
    mov bx, [si]
    push bx
    inc si
    loop push_
    mov si, offset arr
    mov cx, 10
pop_:
    pop dx
    mov [si], dl
    inc si
    loop pop_
    mov si, offset arr
    mov cx, 10
print:
    mov dl, [si]
    add dl, 30h
    mov ah, 2
    int 21h

    mov dl, ' '
    mov ah, 2
    int 21h
    inc si
    loop print
    mov ah, 4ch
    int 21h
main endp
end main