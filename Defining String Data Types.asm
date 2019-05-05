TITLE Data Definitions
			; Examples showing how to define data.
INCLUDE Irvine32.inc
.data   
			; ----------------- Strings ---------------------
	Str1 BYTE "Welcome to this lab", 0h
	Str2 BYTE "Welcome to this program", 0dh, 0ah
.code
	main PROC
	mov edx, OFFSET Str1
	call WriteString
	call crlf
	xor edx,edx
	mov edx, offset str2
	call WriteString
	exit
main ENDP
END main