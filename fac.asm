include irvine32.inc

.data

.code
	main proc
	xor eax ,eax
	xor ecx,ecx
	call readint
	call fac
	call writedec
	call crlf
	exit
main endp
	
	fac proc
	mov ecx,eax
	dec ecx
       L1:
       	mul ecx
       	loop L1
        
       	ret
fac endp

end main