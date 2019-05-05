Include irvine32.inc
	
.data
	msg byte "Enter Character    : ",0
	msg1 byte "Your Upper Case is : ",0
	array Byte "welcCDme to coal lab fall",0
	arr byte 11 DUP(?)
	intarray WORD 100h,200h,300h,400h

.code
	main PROC
	
	mov edx,offset msg
	call writestring
	
	mov ecx,LENGTHOF arr
	mov esi,OFFSET arr
    L2:
	call readchar
	;and al, 11011111b
	mov  [esi],al
	inc esi
	call writechar
	loop L2
	call crlf
	
	mov ecx,LENGTHOF arr
	mov esi,OFFSET arr
	
	mov edx,offset msg1
	call writestring
    l1:
    	and byte PTR [esi], 11011111b
	mov al, [esi]
	Call Writechar
	inc esi
	loop l1
	call crlf
	
	mov dl,21
	mov dh,2
	call gotoxy
	mov ecx, LENGTHOF array
	mov esi, OFFSET array
    L3:
	and byte PTR [esi], 11011111b
	mov edx, OFFSET array
	mov al, [esi]
	Call Writechar
	inc esi
	loop L3
	call crlf
	
	
	xor eax,eax
	xor edi,edi
	mov edi,OFFSET intarray				; address of intarray
	mov ecx,LENGTHOF intarray			; loop counter
	mov ax,0					; zero the accumulator
     L5:
	add ax,[edi]					; add an integer
	add edi,TYPE intarray				; point to next integer
	loop L5
	call writehex
	call crlf
	
	xor eax,eax
	mov al,'A'	; AL = 00000110b
	or  al,00110000b
	call writeint
exit
main ENDP
END main