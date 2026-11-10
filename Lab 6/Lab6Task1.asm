; program to print biodata in separate lines using variables
.model small
.stack 100h
.data
Msg1 DB 'Biodata:$'
Msg2 DB 'My name is Ayesha Amjad.$'
Msg3 DB 'MY SAP ID is 82690.$'
Msg4 DB 'I am a student at Riphah International University Islamabad.$'
Msg5 DB 'I live in Bahria Phase 8 with my family.$'
.code
main proc
mov ax, @data
mov ds, ax
mov dx, offset msg1
mov ah, 9
int 21h
mov dl, 10
mov ah, 2
int 21h
mov dl, 13
mov ah, 2
int 21h
mov dx, offset msg2
mov ah, 9
int 21h
mov dl, 10
mov ah, 2
int 21h
mov dl, 13
mov ah, 2
int 21h
mov dx, offset msg3
mov ah, 9
int 21h
mov dl, 10
mov ah, 2
int 21h
mov dl, 13
mov ah, 2
int 21h
mov dx, offset msg4
mov ah, 9
int 21h
mov dl, 10
mov ah, 2
int 21h
mov dl, 13
mov ah, 2
int 21h
mov dx, offset msg5
mov ah, 9
int 21h
mov dl, 10
mov ah, 2
int 21h
mov dl, 13
mov ah, 2
int 21h
mov ah, 4ch
int 21h
main endp
end main