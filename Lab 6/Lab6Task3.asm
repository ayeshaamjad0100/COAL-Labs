; program to print biodata in separate lines using variables
.model small
.stack 100h
.data
Msg1 DB ?
Msg2 DB 'Enter a Character in Lowercase: $'
Msg3 DB 'The Character you entered is (In Uppercase): $'
.code
main proc
mov ax, @data
mov ds, ax
mov dx, offset msg2
mov ah, 9
int 21h

mov ah, 1
int 21h
mov msg1, al

mov dl, 10
mov ah, 2
int 21h

mov dl, 13
mov ah, 2
int 21h

mov ax, @data
mov ds, ax
mov dx, offset msg3
mov ah, 9
int 21h

sub msg1, 32
mov dl, msg1
mov ah, 2
int 21h

mov ah, 4ch
int 21h
main endp
end main