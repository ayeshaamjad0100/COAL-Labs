;Ayesha Amjad 82690
org 100h
.model small
.data
    str1 db 'First String$'
    str2 db 'Second String$'
    str3 db 'Third String$'
    str4 db 'Fourth String$'
    str5 db 'Fifth String$'
.code
main proc
    mov ax, @data
    mov ds, ax

    mov dx, offset str1
    call print_string

    mov dx, offset str2
    call print_string

    mov dx, offset str3
    call print_string

    mov dx, offset str4
    call print_string

    mov dx, offset str5
    call print_string

    mov ah, 4ch
    int 21h
main endp

print_string proc
    mov ah, 9
    int 21h
    call newline
    ret
print_string endp

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