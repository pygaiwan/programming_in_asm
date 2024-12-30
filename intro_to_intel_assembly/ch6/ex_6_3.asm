; Write an assembly language program to compute the average of 4
; grades. Use memory locations for the 4 grades. Make the grades all
; different numbers from 0 to 100. Store the average of the 4 grades in
; memory and also store the remainder from the division in memory.
    section .data
g1  dq      84
g2  dq      32
g3  dq      97
g4  dq      1

avg dq      0
rem dq      0
num dq      4

    section .text
    global main

main:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 16
    
    xor     rax, rax
    
    add     rax, [g1]
    add     rax, [g2]
    add     rax, [g3]
    add     rax, [g4]

    xor     rdx, rdx        ; needed for division
    idiv    qword [num]     ; qword for telling assemby the size of num 
    mov     [avg], rax
    mov     [rem], rdx

    leave
    ret
