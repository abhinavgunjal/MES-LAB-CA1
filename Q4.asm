ORG 0000H

; ---------- form 6400 ----------
CLR A              ; A = 00H

MOV A,#40H         ; 64 decimal
MOV B,#64H         ; 100 decimal
MUL AB             ; A = 64 × 100 = 6400

MOV R0,A           ; store low byte
MOV R1,B           ; store high byte

; ---------- form 18 using logical ops ----------
CLR A
ORL A,#10H         ; 16
ORL A,#02H         ; 16 OR 2 = 18

; ---------- add both parts ----------
ADD A,R0           ; add low byte of 6400
MOV R0,A

MOV A,R1
ADDC A,#00H        ; carry adjust

; result now = 6418 in R1:R0 (AX pair)

END
