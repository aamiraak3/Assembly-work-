TITLE Data Definitions
						; Examples showing how to define data.
INCLUDE Irvine32.inc
.data
						; ----------------- Usage of DUP Operator ---------------------
	Bytedup1 BYTE 20 DUP(0)			; 20 bytes, all equal to zero
	Bytedup2 BYTE 20 DUP(?)			; 20 bytes, uninitialized
	Bytedup3 BYTE 3 DUP("FAST-NU")		; 21 bytes, “FAST-NUFAST-NUFAST-NU”
.code
	main PROC
	xor eax,eax
	;call writeint				;(insert instructions here to print & manipulate these values)
	mov al,Bytedup3
	;call writestring
	call writechar
	mov al,Bytedup1+1
	call writechar
	mov al,Bytedup3+2
	call writechar
	mov al,Bytedup3+3
	call writechar
	mov al,Bytedup3+4
	call writechar
	mov al,Bytedup3+5
	call writechar
	mov al,Bytedup3+6
	call writechar
	mov al,Bytedup3+7
	call writechar
	mov al,Bytedup3+8
	call writechar
	mov al,Bytedup3+9
	call writechar
	mov al,Bytedup3+10
	call writechar
	mov al,Bytedup3+12
	call writechar
	mov al,Bytedup3+13
	call writechar
	mov al,Bytedup3+14
	call writechar
	mov al,Bytedup3+15
	call writechar
	mov al,Bytedup3+16
	call writechar
	mov al,Bytedup3+17
	call writechar
	mov al,Bytedup3+18
	call writechar
	mov al,Bytedup3+19
	call writechar	
	mov al,Bytedup3+20
	call writechar
	mov al,Bytedup3+21
	call writechar
	
	mov al,Bytedup1
	call writedec
	mov al,Bytedup1+1
	call writedec
	mov al,Bytedup1+2
	call writedec
	mov al,Bytedup1+3
	call writedec
	mov al,Bytedup1+4
	call writedec
	mov al,Bytedup1+5
	call writedec
	mov al,Bytedup1+6
	call writedec
	mov al,Bytedup1+7
	call writedec
	mov al,Bytedup1+8
	call writedec
	mov al,Bytedup1+9
	call writedec
	mov al,Bytedup1+10
	call writedec
	mov al,Bytedup1+11
	call writedec
	exit
main ENDP
END main