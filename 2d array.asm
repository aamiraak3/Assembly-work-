include irvine32.inc

.data
	twoDarray dword 4 dup(4 dup(?))
	var dword ?
	var1 dword ?

.code
	initalizetwoDarray proc              ; initilization of 2 D array
	xor eax,eax
	xor ecx,ecx
	xor esi,esi
	
	mov ecx , 4
	mov esi, 4
       LL:
        call readint
        mov [esi+twoDarray],eax
        add esi,4
        loop LL
        ret
        
initalizetwoDarray endp  
	
	ReversePrinttwoD proc                 ; Reverse Print of Array
	mov ecx , 4
	sub esi , 4
	
       L1:
	mov eax , [esi+twoDarray]
	sub esi , 4
	call writedec
	call crlf
	loop L1
	ret
	
ReversePrinttwoD endp

	diagnolSum proc                            ; Diagnol Sum of array
	mov esi , 4
	mov ecx , 3
	mov var , 0
	
       L2:
	add esi , var
	add eax , [esi+twoDarray]
	mov var , 12
	loop L2
	call crlf
	call writedec
	ret
diagnolSum endp

	transpose proc                             ; Transposing Array
	
	mov edi , offset twoDarray
	mov ecx , 3
	mov var , 12
	mov ebx , 0
	call crlf
	
       L3:
	mov var1 , ecx
	mov ecx , 4
	mov esi , offset twoDarray
	add esi , ebx
	add ebx , 4
	
	  L4:			
	   mov eax , [esi]   
	   mov [edi] , eax
	   add esi , 12
	   add edi , 4
	   loop L4
	   mov ecx , var1
	   loop L3
	   
	mov ecx , 3
	mov esi , offset twoDarray
	call crlf
	
      L5:                                          ; transpose array printing
	mov var1 , ecx
	mov ecx , 4
	
	  L6:
       	    mov eax , [esi]
       	    call writedec
            add esi , 4
	    loop L6
	    mov ecx , var1
	    call crlf	
	    loop L5

	    ret

transpose endp

	main proc                             ; main procudure
	
	call initalizetwoDarray
	call crlf
	call ReversePrinttwoD
	call crlf
	call diagnolSum
	;call crlf
	call transpose
	
	exit
main endp
end main
	
	