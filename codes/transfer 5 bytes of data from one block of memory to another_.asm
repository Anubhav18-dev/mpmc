MVI 	C, 05H 		;[C] <- 05
LXI 	H, 9000H 	;[H-L] <- 9000
LXI 	D, 9100H 	;[D-E] <- 9100
LOOP: 	MOV A, M 	;[A] <- [[H-L]]
STAX 	D 		;[A] -> [[D-E]]
INX 	H 		;[H-L] <- [H-L] + 1
INX 	D 		;[D-E] <- [D-E] + 1
DCR 	C 		;[C] <- [C] – 1
JNZ 	LOOP 		;Jump if not zero to LINE 4
HLT 			;Stop