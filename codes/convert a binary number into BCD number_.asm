LXI SP,9FFFH
LDA 9050H
CALL SUBROUTINE 
HLT 
SUBROUTINE:       PUSH B
       PUSH D
       MVI B,64H
       MVI C,0AH
       MVI D,00H
       MVI E,00H
STEP1: CMP B
       JC STEP2 
       SUB B 
       INR E 
       JMP STEP1  
STEP2: CMP C 
       JC STEP3  
       SUB C  
       INR D            
       JMP STEP2           
STEP3: STA 9060H
       MOV A,D  
       STA 9061H
       MOV A,E   
       STA 9062H      
       POP D   
       POP B      
       RET         