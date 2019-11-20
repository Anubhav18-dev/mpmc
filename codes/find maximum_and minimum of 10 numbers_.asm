LXI H, 2050H 	;Load starting address of list
MOV B, M 	;Store maximum
MOV C, M 	;Store minimum
MVI D, 05H 	;Counter for 5 elements
LOOP: MOV A, M 	;Retrieve list element in Accumulator
CMP B 	  ;Compare element with maximum number
JC MIN 	  ;Jump to MIN if not maximum
MOV B, A 	;Transfer contents of A to B as A > B
MIN: CMP C 	;Compare element with minimum number
JNC SKIP 	;Jump to SKIP if not minimum
MOV C, A 	;Transfer contents of A to C if A < minimum
SKIP: INX H 	;Increment memory
DCR D 	;Decrement counter
JNZ LOOP 	;Jump to LOOP if D > 0
LXI H, 2060H 	;Load address to store maximum
MOV M, B 	;Move maximum to 2060H
INX H 	;Increment memory
MOV M, C 	;Move minimum to 2061H
HLT 	;Halt
