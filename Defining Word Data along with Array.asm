TITLE Data Definitions
								; Examples showing how to define data.
INCLUDE Irvine32.inc
.data
								; ----------------- Word Values ---------------------
	word1 WORD 65535 					; largest unsigned value
	word3 WORD ? 						; uninitialized
	myList DWORD 1,2,3,4,5 					; array of words
.code
	main PROC
	xor eax,eax						;(insert instructions here to print & manipulate these values)
	mov eax,mylist+16
	call writedec
	exit
main ENDP
END main