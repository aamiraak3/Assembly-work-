include irvine32.inc

.data
	max byte 0
	msg byte "Enter 5 values", 0
	msg1 byte "max is : ",0
	val1 byte ?
	val2 byte ?
	val3 byte ?
	val4 byte ?
	val5 byte ?

.code
	maxi proc
	xor eax,eax
	xor edx,edx
	
	mov eax,5
	
       s:
	mov max,al
	jmp l2
	
       l1:
        mov edx,offset msg
        call writestring
        call readint
        call crlf
        mov val1,al
        
        call writedec
	mov val2,al
	
        call readint
	mov val3,al
	
        call readint
	mov val4,al
	
        call readint
	mov val5,al
	
	loop l1
	
	mov al,max
	
       l2:
        cmp al,val2
        
        je s
        
        cmp al,val3
        je s  
        
        cmp al,val4
        je s
        
        cmp al,val5
        je s
       
        mov edx,offset msg1
        call writestring
         call writedec
        call crlf
	
	ret
maxi endp

	main proc
	
	call maxi
	
	exit
main endp
end main