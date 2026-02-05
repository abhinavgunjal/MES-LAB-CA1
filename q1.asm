ORG 0000H

; Step 1: Load 100 into A
MOV A,#64H        ; 100 decimal

; Step 2: Load 10 into B
MOV B,#0AH        ; 10 decimal

; Step 3: Multiply A × B → result in B:A
MUL AB            ; 100 × 10 = 1000 (03E8H)
                  ; B = 03H , A = E8H

; Step 4: Add remaining 92
ADD A,#5CH        ; E8 + 5C = 144H → carry generated

; Handle carry
JNC NEXT
INC B

NEXT:
; Final result:
; B:A = 0444H = 1092 decimal

HERE: SJMP HERE   ; Stop

END
