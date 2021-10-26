    .data
    .balign 4
get_A: .asciz "A : \n"
    .balign 4
get_B: .asciz "B : \n"
    .balign 4
pattern: .asciz "%d"
    .balign 4
output: .asciz "gcd of %d and %d = %d\n"
    .balign 4
printX: .asciz "max = %d , min = %d\n"

    .balign 4
A:  .word   0
    .balign 4
B:  .word   0
    .balign 4
max: .word 0
    .balign 4
min: .word 0
    .balign 4
result: .word 0

@ Variables to backup link register
.balign 4
lr_bu: .word 0

.balign 4
lr_bu_2: .word 0

    .text

gcd_func:
    @ Save (Store) Link Register to lr_bu_2
    LDR R2, addr_lr_bu_2
    STR lr,[R2] @ Mem[addr_lr_bu_2] <- LR
    MOV R3,#1
for:
    CMP R2,R3


    LDR lr, addr_lr_bu_2
    LDR lr, [lr] @ LR <- Mem[addr_lr_bu_2]

    BX lr

@ address of Link Register back up 2
addr_lr_bu_2: .word lr_bu_2

    .global main
main:
    @ Print A :
    LDR R0, addr_get_A
    BL printf

    @ Store (back up) Link Register
    LDR R1, addr_lr_bu
    STR lr, [R1] @ Mem[addr_lr_bu] <- LR

    @ Get A from user via keyboard
    LDR R0, addr_pattern
    LDR R1, addr_A
    BL scanf

    @ Print B :
    LDR R0, addr_get_B
    BL printf

    @ Get B from user via keyboard
    LDR R0, addr_pattern
    LDR R1, addr_B
    BL scanf

    LDR R1, addr_A
    LDR R1, [R1]
    LDR R2, addr_B
    LDR R2, [R2]
    CMP R1,#0
    BGE else1
    MOV R5,#-1
    MUL R1,R1,R5
else1:
    CMP R2,#0
    BGE else2
    MOV R5,#-1
    MUL R2,R2,R5

else2:
    CMP R1,R2
    BGE end
    MOV R3,R1
    MOV R1,R2
    MOV R2,R3
    B end3
end3:
    LDR R3,=max
    STR R1,[R3]
    LDR R4,=min
    STR R2,[R4]

    LDR R1,=max
    LDR R1,[R1]
    LDR R2,=min
    LDR R2,[R2]
    BL gcd_func

    LDR R0,=output
    LDR R1,=max
    LDR R1,[R1]
    LDR R2,=min
    LDR R2,[R2]
    LDR R3,=result
    LDR R3,[R3]
    BL printf


    @ Restore Link Register to return
    LDR lr, addr_lr_bu
    LDR lr, [lr] @ LR <- Mem[addr_lr_bu]
    BX lr

addr_lr_bu: .word lr_bu
addr_get_A: .word get_A
addr_get_B: .word get_B
addr_pattern: .word pattern
addr_output: .word output
addr_A: .word A
addr_B: .word B

.global printf
.global scanf



