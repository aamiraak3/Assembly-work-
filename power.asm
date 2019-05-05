include irvine32.inc

.data
	;var1 dword ?
.code
	main proc
	xor eax ,eax
	xor ebx,ebx
	xor ecx,ecx
	mov eax,4
	mov ebx,2
	call power
	call writedec
	call crlf
	exit
main endp
	
	power proc
	;mov eax, eax
	mov ecx,ebx
	dec ecx
       L1:
       	mul eax
       	loop L1
       	ret
power endp

end main