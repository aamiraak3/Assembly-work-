include irvine32.inc

.data
	buffer byte 32 DUP(0),0
		array DWORD 1,1,2,3,4,5,6,7,8,9,10
.code
	main proc
	
	mov ecx,32
	mov esi,offset buffer
	l1:
	shl eax,1
	mov byte ptr [esi],'0'
	jnc l2
	mov byte ptr [esi],'1'
	l2:
	;call writebin
	inc esi
	loop l1
	
	

	
	call crlf
	

	
	cld	
	mov ecx,(LENGTHOF array) - 1
	mov esi,OFFSET array+4
	mov edi,OFFSET array
	rep movsd
	
	
	
	
	exit
	main endp
	end main