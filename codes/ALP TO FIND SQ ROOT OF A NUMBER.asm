MVI D,1			;D <- 01H
MVI E,1			;E <- 01H
LDA 9050H		;A <- M[9050]
JUMP:	SUB D		;A <- A – D
	JZ NEXT		;Jump if ZF = 1 to line no 10
	INR D			;D <- D + 1
	INR D			;D <- D + 1
	INR E			;E <- E + 1
JMP JUMP 		;Jump to line no 4
NEXT:	MOV A, E	;A <- E
STA 9051H		;A -> M[9051]
HLT			;END