    .global main
main:
    MOV R1, #1
    MOV R2, #2

    @ Push (store) R1 onto stack, then subtract SP by 4 bytes
    @ The ! (Write-Back symbol) updates the register SP
    STR R1, [sp, #-4]!
    STR R2, [sp, #-4]!

    @ Pop (load) the value and add 4 to SP
    LDR R0, [sp], #+4
    LDR R0, [sp], #+4
end:
    BX LR


debug3: Lab8_3
        as -g -o Lab8_3.o Lab8\_3.s
        gcc -o Lab8_3 Lab8_3.o
        gdb Lab8_3


    .global main
main:
    MOV R1, #0
    MOV R2, #1
    MOV R4, #2
    MOV R5, #3

    @ SP is subtracted by 8 bytes to save R4 and R5, respectively.
    @ The ! (Write-Back symbol) updates SP.
    STMDB SP!, {R4, R5}

    @ Pop (load) the values and increment SP after that
    LDMIA SP!, {R1, R2}
    ADD R0, R1, #0
    ADD R0, R0, R2

end:
    BX LR