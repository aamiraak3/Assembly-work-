include irvine32.inc

.data
	count word 0
	msg byte "no fond : ",0
	msg2 byte "enter no for counting ones ",0

.code
	
	
	
	;QUESTION 4
	
	bitewisemultiply proc uses ecx edx esi
	
	xor eax,eax
	xor ebx,ebx
	
	mov edx,0
	mov ecx,32
	L:
	   test ebx,1
	   jz LL
	   add edx,eax
	   jc LLL
	LL:
	   SHR ebx,1
	   SHR eax,1
	   jc LLL
	   loop l
	LLL:
	     mov eax,edx
	     
	     
ret

bitewisemultiply endp




	main proc   
	
	
	
	;   QUESTION 3
	
	
	xor eax,eax
	    mov edx,offset msg2
	    call crlf
	    call writestring
	    call crlf
	    call readint
	    mov edx,offset msg
	    call crlf
	    L3:
	    call writebin
	    call crlf
	    mov count,0
	    mov ecx,16
	    L1:
	        shr ax,1
	        jnc L2
	        inc count   
	        L2:   
	    loop L1
	    mov ax,count
	    call writestring
	    call writedec
	    call crlf
	    cmp ax , 1
	    jne L3
	   
    call crlf
	
	call bitewisemultiply
	exit
	
main endp
end main