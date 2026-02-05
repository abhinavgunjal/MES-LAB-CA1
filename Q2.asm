ORG 0000H


MOV 50H, #07H      
MOV R1, 51H        

COMPARE_LOOP:
    MOV A, R0
    JZ A_IS_ZERO   
    MOV A, R1
    JZ B_IS_ZERO   

    
    DEC R0          
    DEC R1          
    SJMP COMPARE_LOOP

A_IS_ZERO:
    
    MOV A, R1
    JZ ARE_EQUAL   
    MOV R7, #0FFH  
    SJMP SAVE_RESULT

B_IS_ZERO:
    
    MOV R7, #01H    
    SJMP SAVE_RESULT

ARE_EQUAL:
    MOV R7, #00H  

SAVE_RESULT:
   
    SJMP $         

END