
LXI H,2050h 	      ;H <- 20, L <- 4F
MVI C, 00h	;C <- 00
MVI D, 05h	;D <- 0A
go: INX H 	;M <- M + 01
MOV A,M 	;A <- M
ANI 01h 	;A <- A (AND) 01
JZ ahead	;Jump if ZF = 1
INR C 	       ;C <- C + 01
ahead: DCR D 	;D <- D – 01
JNZ go 	    ;Jump if ZF = 0
MOV A, C 	;A <- C
STA 3050h 	;M[3050] <- A
HLT 	    ;END