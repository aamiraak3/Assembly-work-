include irvine32.inc
.data
	msg byte    "Enter any values to be added : ",0
	msg1 byte   "Sum of values is : ",0
	msg11 byte  "Even count is    : ",0
	msg111 byte "Odd count is     : ",0
	aa dword  10
	sum dword 0
	zz dword 2
	evn dword 0
	od  dword 0
	nu  dword ?
.code
	main proc
	xor eax,eax
	
	mov edx,offset msg
	call writestring 
	call readint
	
	xor edx,edx

     q1:
	div aa
	add sum,edx
	
	mov nu,eax
	mov eax,edx
	xor edx,edx
	
	div zz
	mov eax,edx
	xor edx,edx
	cmp edx,eax
	jz q2
	inc od
	jmp q3

      q2:
	inc evn

      q3:
	mov eax,nu
	cmp eax,edx
	jnz q1
	
	mov eax,sum
	mov edx,offset msg1
	call writestring 
	call writedec
	call crlf

	mov edx,offset msg11
	call writestring 
	mov eax,evn
	call writedec
	call crlf
	
	mov edx,offset msg111
	call writestring 
	mov eax,od
	call writedec
	call crlf
exit
	
main endp
end main