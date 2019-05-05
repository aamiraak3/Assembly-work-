INCLUDE Irvine32.inc


sytime macro
	xor eax,eax
	xor edx,edx
	
	mov dh, Y
	mov dl, X
	call Gotoxy
	INVOKE GetLocalTime,ADDR sysTime
	mov edx,OFFSET TheTimeIs ; "The time is "
	call WriteString
	
	
; Display the system time (hh:mm:ss).

	movzx eax,sysTime.wHour ; hours
	call WriteDec
	mov edx,offset colonStr ; ":"
	call WriteString
	
	movzx eax,sysTime.wMinute ; minutes
	call WriteDec
	mov edx,offset colonStr ; ":"
	call WriteString

	movzx eax,sysTime.wSecond ; seconds
	call WriteDec
	call Crlf
	call Crlf
endm

.data
	X = 10
	Y = 5
	sysTime SYSTEMTIME <>
	consoleHandle DWORD ?
	colonStr BYTE ":",0
	TheTimeIs BYTE "The time is ",0
.code
	main PROC
	
	sytime
	

	exit

main ENDP
END main