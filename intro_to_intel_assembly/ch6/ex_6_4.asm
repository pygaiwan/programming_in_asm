; Write an assembly language program to compute the cost of electricity for a home. 
; The cost per kilowatt hour will be an integer number of pennies stored in a memory location. 
; The kilowatt hours used will also be an integer stored in memory. The bill amount will be $5.00 
; plus the cost per kilowatt hour times the number of kilowatt hours over 1000. You can use a 
; conditional move to set the number of hours over 1000 to 0 if the number of hours over 1000 is 
; negative. Move the number of dollars into one memory location and the number of pennies into another.

    section .data
cost    dq      7
used    dq      1080
bill    dq      500

dollars dq      100
total   dq      0
pennies dq      0

    section .text
    global main

main:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 16

    xor     rax, rax
    xor     rbx, rbx

    mov     rax, [used]
    sub     rax, 1000
    neg     rax
    cmovg   rax, rbx
    neg     rax
    
    imul    rax, [cost] 
    add     rax, [bill]
    
    xor     rdx, rdx
    idiv    qword [dollars]
    mov     qword [total], rax
    mov     qword [pennies], rdx

    leave
    ret
