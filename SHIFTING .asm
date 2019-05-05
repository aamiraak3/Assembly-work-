include irvine32.inc

.data
	byte1 byte 3fh
	byte2 DWORD 8Ch
	byte3 byte 0ffh
	MSG   Byte "No. of ONE's are :",0 
	
	count word ?

.code
	main PROC                                    ; Q NO 1 IN LAB
	xor eax,eax
	
	mov ax,234Bh
	call writebin
	call writehex
	call crlf
	
	mov dx,7654h
	call writebin
	call writehex
	call crlf
	call crlf
	shrd ax,dx,8
	call writebin
	call writehex
	call crlf
	
	ror al,2
	call writebin
	call writehex
	call crlf
	
	call crlf
	
	xor eax,eax
	mov eax,byte2
	call writebin
	call crlf
	SHR eax,1
	call writebin
	;call writedec
	call crlf
	exit
	
main  endp 
end main