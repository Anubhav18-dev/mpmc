LDA 2050H 	;A <- M[2050]
ANI 01 	;A <- A (AND) 01
JZ LOOP 	;Jump if ZF = 1
MVI A,11H 	;A <- 11
JMP AHEAD 	;Jump to memory location
LOOP: MVI A,22H 	;A <- 22
AHEAD: STA 3050H 	;M[3050] <- A
HLT 	;END