include irvine32.inc
.data
	array SWORD -3,-6,-1,-10,-11,-30,-40,11
	sentinel SWORD 0
	msg byte "Positive No : ",0
.code
 main proc
 
	mov edx,offset msg
    	call writestring
 	
 	xor eax,eax
	mov esi,OFFSET array
	mov ecx,LENGTHOF array
    next:
	test WORD PTR [esi],8000h	          	; test sign bit
	pushfd						; push flags on stack
	add esi,TYPE array
	popfd						; pop flags from stack
	loopnz next					; continue loop
    	
	jnz quit					; none found
	sub esi,TYPE array				; ESI points to value
    quit:

    	
    	mov ax,word ptr [esi]
	call writedec
    	call crlf
 

    
    exit 
main endp
end main
