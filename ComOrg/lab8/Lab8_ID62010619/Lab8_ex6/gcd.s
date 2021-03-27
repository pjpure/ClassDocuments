    .global gcd_func
gcd_func:
        MOV R6,#0

        CMP R0,#0 @cmp A,0
        BGE else1 @if A>=0 go to else1
        MOV R6,#1 @ A<0 -> R6=1
        MOV R5,#-1
        MUL R0,R0,R5 @ A=A*(-1)
    else1:
        CMP R1,#0 @cmp B,0
        BGE end @if B >= 0 to end
        MOV R5,#-1
        MUL R1,R1,R5 @B = B*(-1)
    end:

    gcd:
        CMP R0,R1 @cmp A,B
        BEQ endGcd @ if A=B go to endGcd
        CMP R0,R1 @cmp A,B
        BLE elseGcd @if A<=B go to elseGcd
        SUB R0,R0,R1 @A=A-B if A>B
        b gcd
    elseGcd:
        SUB R1,R1,R0 @B=B-A if B>=A
        b gcd
    endGcd:
        BX LR
