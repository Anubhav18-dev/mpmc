LDA 9200H ; Get the packed BCD number
ANI 0FH; Mask lower nibble
RRC
RRC
RRC
RRC ; Adjust higher BCD digit as a lower digit
STA 9301H ; Store the partial result
LDA 9200H ; .Get the original BCD number
ANI 240; Mask higher nibble
STA 9201H ;: Store the result
HLT ;: Terminate program execution
