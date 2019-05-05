include irvine32.inc

.data
	month byte ?
	msg byte "Enter no from 1 to 12", 0
	msgg byte "following is the month"
	msg1 byte "Jan", 0
	msg2 byte "Feb", 0
	msg3 byte "mar", 0
	msg4 byte "apr", 0
	msg5 byte "may", 0
	msg6 byte "Jun", 0
	msg7 byte "Jal", 0
	msg8 byte "aug", 0
	msg9 byte "sep", 0
	msg10 byte "oct", 0
	msg11 byte "mov", 0
	msg12 byte "Dec", 0

.code
	monthname proc
	xor eax,eax
	xor edx,edx
	mov edx,offset msg
	call writestring
	call crlf
	
	call readint
	
	mov al ,1
	cmp al,bl
	je l2
	
	mov al ,2
	cmp bl,al
	je l2
	
	mov al ,3
	cmp bl,al
	je l3
	
	mov al ,4
	cmp al,bl
	je l4
	
	mov al ,5
	cmp bl,al
	je l5
	
	mov al ,6
	cmp bl,al
	je l6
	
	mov al ,7
	cmp bl,al
	je l7
	
	mov al ,8
	cmp bl,al
	je l8
	
	mov al ,9
	cmp bl,al
	je l9
	
	mov al ,10
	cmp al,bl
	je l10
	
	mov al ,11
	cmp bl,al
	je l11
	
	mov al ,12
	cmp bl,al
	je l12
	
       l1:
       	mov edx ,offset msg1
       	call writestring
       	call crlf
       	jmp exi
       l2:
       	mov edx ,offset msg2
       	call writestring
       	call crlf
       	jmp exi
       l3:
	mov edx ,offset msg3
	call crlf
	call writestring
       	call crlf
       	jmp exi
       l4:
       	mov edx ,offset msg4
       	call writestring
       	call crlf
       	jmp exi
       l5:
       	mov edx ,offset msg5
       	call writestring
       	call crlf
       	jmp exi
       l6:
	mov edx ,offset msg6
	call crlf
	call writestring
       	call crlf
       	jmp exi
       l7:
       	mov edx ,offset msg7
       	call writestring
       	call crlf
       	jmp exi
       l8:
       	mov edx ,offset msg8
       	call writestring
       	call crlf
       	jmp exi
       l9:
	mov edx ,offset msg9
	call crlf
	call writestring
       	call crlf
       	jmp exi
       l10:
       	mov edx ,offset msg10
       	call writestring
       	call crlf
       	jmp exi
       l11:
       	mov edx ,offset msg11
       	call writestring
       	call crlf
       	jmp exi
       l12:
	mov edx ,offset msg12
	call crlf
	call writestring
       	call crlf
       	jmp exi
	
	
       exi:
	ret
monthname endp
	
	main proc
	
	call monthname
	
	exit
main endp
end main