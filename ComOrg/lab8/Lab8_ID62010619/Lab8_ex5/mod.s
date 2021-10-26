    .global mod_func
mod_func:
        MOV R6,#0 @ A>=0 , R6 = 0
        CMP R0,#0 @cmp A,0
        BGE else1 @if A>=0 to else1
        MOV R6,#1 @ A<0 , R6=1
        MOV R5,#-1
        MUL R0,R0,R5 @ A=A*(-1)
    else1:
        CMP R1,#0 @cmp B,0
        BGE end @if B >= 0 to end
        MOV R5,#-1
        MUL R1,R1,R5
    end:
    while:
        CMP R0,R1 @cmp A,B
        BLT endW @if A<B to endW
        SUB R0,R0,R1 @A=A-B
        B while
    endW:
        CMP R6,#0
        BEQ endRe @if A = 0 to pos (A is positive)
        MOV R4,#-1
        MUL R0,R0,R4 @R3=R3*(-1) ,result
        B endRe
    endRe:
    BX LR
