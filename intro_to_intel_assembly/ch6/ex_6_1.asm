; Write an assembly language program to compute the distance squared
; between 2 points in the plane identified as 2 integer coordinates
; each, stored in memory.
; NOTE: ignoring the square root since it was not explained.

    section .data
p1  dq      3
p2  dq      4

res dq      0

    section .text
    global  main

main:

    push    rbp
    mov     rbp, rsp
    sub     rsp, 16
    
    xor     rax, rax
    xor     rbx, rbx

    mov     rax, [p1]
    mov     rbx, [p2]

    imul    rax, rax
    imul    rbx, rbx
    add     rax, rbx

    leave
    ret
