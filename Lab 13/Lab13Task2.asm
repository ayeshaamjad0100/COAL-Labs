; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt
;Ayesha Amjad 82690
org 100h
macro display var
    push ax
    push dx
    lea dx, var
    mov ah, 9
    int 21h
    call newline
    pop dx
    pop ax
endm

.model small
.stack 100h
.data
    name_ db 'Name: Ayesha Amjad$'
    sap   db 'SAP ID: 82690$'
.code
main proc
    mov ax, @data
    mov ds, ax

    display name_
    display sap

    mov ah, 4ch
    int 21h
main endp

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