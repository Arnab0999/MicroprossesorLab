model small
.data
	a db 5
	b db 2
	s db ?
.code
main proc
	mov ax,@data
	mov ds,ax
	mov al,a
	sub al,b
	mov ah,4ch
	int 21h

main endp
end main
