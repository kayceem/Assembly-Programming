MVI A, 05h
MOV B,A
MVI A,02h
MVI C, 00h
DIVIDE: CMP B
JC COMPLETED
SUB B
INR C
JMP DIVIDE
COMPLETED: STA 3002h ; Remainder
MOV A,C
STA 3003h ; STORE Q 
HLT