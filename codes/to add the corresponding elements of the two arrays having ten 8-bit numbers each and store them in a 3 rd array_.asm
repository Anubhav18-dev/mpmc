	LXI H,9000H
	LXI B,9100H
	LXI D,9200H
LOOP:	LDAX B
	ADD M
	STAX D
	INX H
	INX B
	INX D
	MOV A,L
	CPI 03H
	JNZ LOOP
HLT
	