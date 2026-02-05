ORG 0000H

MOV R0,#40H      ; Read pointer
MOV R1,#40H      ; Write pointer
MOV R2,#20H      ; 32 bytes counter

SCAN:
MOV A,@R0
INC R0

CJNE A,#0FFH,VALID
SJMP NEXT

VALID:
MOV @R1,A
INC R1

NEXT:
DJNZ R2,SCAN

; -------- Fill remaining with 00H --------

MOV R2,#20H

FILL:
MOV A,R1
CJNE A,#60H,STORE
SJMP DONE

STORE:
MOV @R1,#00H
INC R1
SJMP FILL

DONE:
SJMP DONE

END