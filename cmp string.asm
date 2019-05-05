
include irvine32.inc

.data
source BYTE "MARTINsg",0
dest BYTE "MARTINEZ"
str1 BYTE "1st  is smaller",0dh,0ah,0
str2 BYTE "1st is greater",0dh,0ah,0

.code
main PROC
cld 					; direction = forward
	
	mov esi,OFFSET source
	mov edi,OFFSET dest
	mov ecx,LENGTHOF source
	repe cmpsb
	jb source_smaller
	mov edx,OFFSET str2	; "source is not smaller"
	jmp done
source_smaller:
	mov edx,OFFSET str1	; "source is smaller"
done:
	call WriteString

exit
main ENDP
END main


