include irvine32.inc
.data
.code
	
diffe proc
	xor eax,eax
	
	push ebp
	mov ebp,esp
	mov eax,[ebp + 12]
	sub eax,[ebp + 8]
	call writeint
	leave
	ret 4
	diffe endp
	
main proc

	push 14
	push 30
	call diffe 
	call crlf
	
	
	exit
main endp
end main