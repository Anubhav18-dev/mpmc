LDA 9200H                : Get the Most significant BCD digit
RLC
RLC
RLC
RLC                        : Adjust the position of the second digit (09 is changed to 90)
ANI 240             : Make least significant BCD digit zero
MOV C, A                : store the partial result
LDA 9201H                : Get the lower BCD digit
ADD C                        : Add lower BCD digit
STA 9300H                : Store the result
HLT                        : Terminate program execution