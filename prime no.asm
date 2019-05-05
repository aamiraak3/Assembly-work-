INCLUDE Irvine32.inc
.data
	arr dword 2,2,3,4,5,6,7,8,9,10
	num dword ?
	n dword 2
	msg byte "	Is Not Prime ",0
	msg1 byte " 	Is Prime ",0
.code
	ispr proc uses ecx
	mov num,eax
	xor edx,edx
	div n
	mov ecx,eax
    l11:
	xor edx,edx
	mov eax,num
	
	cmp ecx,1
	jz ll2
	
	div ecx
	cmp edx,0
	jz ll1
	loop l11
    ll1:
	mov edx,offset msg
	call writestring
	jmp backk
    ll2:
	mov edx,offset msg1
	call writestring
	backk:
	ret
ispr endp
	main proc
	mov ecx,lengthof arr
	mov esi,offset arr
    LLL:   
   	mov eax,[esi]
   	call writehex
  	call ispr
 	add esi , 4
	call crlf	
   	loop LLL
	call crlf
	
	call randomize
	mov ecx,20
   lll1:
	call random32
	call writehex
	call ispr
	call crlf
	loop lll1
	
	mov eax,0
	.REPEAT
		inc eax
		call WriteDec
		call Crlf
	.UNTIL eax == 10

	
	exit
main endp
end main
	
	