include irvine32.inc
.data
	array SWORD 0,0,0,0,0,0,3,0,1
	sentinel SWORD 0
.code
main proc
	xor eax,eax
	mov esi,OFFSET array
	mov ecx,LENGTHOF array
L1:	
	cmp WORD PTR [esi],0				; check for zero
	pushfd						; push flags on stack
	add esi,TYPE array
	popfd						; pop flags from stack
	loope L1					; continue loop
	jz quit						; none found
	sub esi,TYPE array
quit:
	
	mov ax,word ptr [esi]
	call writedec
    	call crlf
	exit

main endp
end main