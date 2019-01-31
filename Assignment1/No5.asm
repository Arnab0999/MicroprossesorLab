
.model small
.stack 100h
.data
	lf equ 0ah
	cr equ 0dh
	str db 20 dup('$')
	msg1 db 'Enter your name:',lf,cr,'$'
	msg2 db 'Your name is ',lf,cr,'$'
.code
main proc
	mov ax,@data
	mov ds,ax
	mov si,offset str
	lea dx,msg1
	mov ah,09h
	int 21h
L1:
	mov ah,01h
	int 21h
	cmp al,13
	je l2
	mov [si],al
	inc si
	jmp L1
L2:
	lea dx,msg2
	mov ah,09h
	int 21h
	jmp L3
L3:
	lea dx,str
	mov ah,09h
	int 21h
	mov ah,4ch
	mov ah,09h
	int 21h

main endp
end main
