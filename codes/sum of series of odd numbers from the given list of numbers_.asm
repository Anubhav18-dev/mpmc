LDA 2200H 		;[A] <- 2200H
MOV C,A 		;Initialize counter
MVI B,00H      		;sum = 0
LXI H,2201H 		;Initialize pointer
BACK: 	MOV A,M 	;Get the number
	ANI 01H 	;Mask Bit l to Bit7
	JZ SKIP 	;Don’t add if number is ODD
	MOV A,B 	;Get the sum
	ADD M 	    	;SUM = SUM + data
	MOV B,A 	;Store result in B register
	SKIP: 	INX H 	;increment pointer
		DCR C 	;Decrement counter
	JNZ BACK 	;if counter 0 repeat
MOV A,B			;Get the sum
STA 220AH 		;store sum
HLT 			;Terminate program execution