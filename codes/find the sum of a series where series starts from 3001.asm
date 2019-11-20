MVI 	B, 00 	;[B] <- 00
LXI 	H, 3000H	;[H-L] <- [3000]
MOV 	C, M 	;[C] <- [M]
DCR 	C 	;[C] <- [C] – 1
INX 	H 	;[H-L] <- [H-L] + 1
MOV 	A, M 	;[A] <- [M]
AHEAD: INX 	H 	;[H-L] <- [H-L] + 1
ADD 	M 	;[A] <- [A] + [M]
JNC 	GO	;jump if no carry
INR 	B 	;[B] <- [B] + 1
GO: DCR 	C 	;[C] <- [C] – 1
JNZ 	AHEAD	;jump if not zero
STA 	4000H	;result
MOV 	A, B 	;[A] <- [B]
STA 	4001H 	;carry
HLT 		;Stop