MVI D, 01 	;D <- 01
MVI E, 01 	;E <- 01
LDA 2050h	;A <- M[2050]
AHEAD: SUB D 	        ;A <- A – D
JZ loop 	;Jump if ZF = 0 to memory location 2011
INR D 	        ;D <- D + 1
INR D 	        ;D <- D + 1
INR E           ;E <- E + 1
JMP AHEAD 	;Jump to memory location 2007
loop: MOV A, E 	;A <- E
STA 3050H 	;A -> M[3050]
HLT 	        ;END