include irvine32.inc
.data
	msg byte "enter val:",0
	msg11 byte "invalid marks:",0
	msg1 byte "grade is :",0
	grade1 byte "A",0
	grade2 byte "B",0
	grade3 byte "C",0
	grade4 byte "D",0
	grade5 byte "F",0
	val byte ?
.code
	main proc
	xor eax,eax
	xor edx,edx
	mov edx,offset msg
	call writestring
	call crlf
	call readint
	cmp al,59
	ja l
	cmp al,69
	ja l1
	cmp al,79
	ja l2
	cmp al,89
	ja l3
	l:
	cmp al,59
	mov edx,offset msg1
	call writestring
	call crlf
	mov edx,offset grade1
	call writestring
	call crlf
	jmp exiti
	l1:
	cmp al,69
	mov edx,offset msg1
	call writestring
	call crlf
	mov edx,offset grade2
	call writestring
	call crlf
	jmp exiti
	l2:
	cmp al,79
	mov edx,offset msg1
	call writestring
	call crlf
	mov edx,offset grade3
	call writestring
	call crlf
	jmp exiti
	l3:
	cmp al,89
	mov edx,offset msg1
	call writestring
	call crlf
	mov edx,offset grade4
	call writestring
	call crlf
	jmp exiti
	l4:
	cmp al,100
	ja exiti
	mov edx,offset msg1
	call writestring
	call crlf
	mov edx,offset grade1
	call writestring
	call crlf
	jmp exiti
	l5:
	cmp al ,200
	ja exa
	mov edx,offset msg1
	call writestring
	call crlf
	mov edx,offset msg11
	call writestring
	call crlf
	jmp exa
	exa:
	exiti:
	exit
main endp
end main