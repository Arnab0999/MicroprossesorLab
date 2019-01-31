model small
.stack 100h
.data
str db 'Arnab_Sardar$'
.code
main proc
mov ax,@data
mov ds,ax
lea dx,str
mov ah,09h
int 21h
mov ah,4ch
int 21h
main endp
end main
